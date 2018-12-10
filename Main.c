/*  Name     : main.c
 *  Purpose  : Main file for calculator code for PIC16F877.
 *  Author   : M.Saeed Yasin
 *  Date     : 25-11-12
 *  Website  : saeedsolutions.blogspot.com
 *  Revision : None
 */
#include "Includes.h"
#include "stdio.h"
#include "stdlib.h"
#include "math.h"

// Configuration word for PIC16F877
__CONFIG( FOSC_HS & WDTE_OFF & PWRTE_ON & CP_OFF & BOREN_ON 
		& LVP_OFF & CPD_OFF & WRT_ON & DEBUG_OFF);

// Main function
void main(void)
{
    char msg[16];
	char key;           // Key char for keeping record of pressed key
	long int num1 = 0;       // First number
	char func = '.';    // Function to be performed among two numbers
	long int num2 = 0;       // Second number
    int tmp = 0;
    int shift = 0;
    int next = 0;
    long double result = 0;

	InitKeypad();       // Initialize Keypad
	InitLCD();			// Initialize LCD
	ClearLCDScreen();
	while(1)
    {
        // get number 1
        WriteCommandToLCD(0x02);
        while(!next)
        {
            key = GetKey();
            tmp = get_num(key);
            if(tmp != Error)
            {
                WriteDataToLCD(key);
                num1 = num1*10 + tmp;
            }
            else
            {
                switch(key)
                {
                    case '+': func = '+'; next = 1; break;
                    case '-': func = '-'; next = 1; break;
                    case 'x': func = '^'; next = 1; break;
                    case '/': shift = 1; next = 1; break;
                }
                if(!shift && func != '.') WriteDataToLCD(func);
                if(func == '^') WriteDataToLCD(0x32); // 2
            }
        }        
        // Finish getting function (if user chooses shift)
        while(shift)
        {
            key = GetKey();
            switch(key)
            {
                case '+': func = 'x'; shift = 0; break;
                case '-': func = '/'; shift = 0; break;
                case 'x': func = 'f'; shift = 0; break;
            }
            if(func=='f')
            {
                WriteDataToLCD(0xE8); // root
                WriteDataToLCD(0x32); // 2
            }
            else WriteDataToLCD(func);
        }
        // Get number 2
        next = 0;
        while(!next)
        {
            key = GetKey();
            tmp = get_num(key);
            if(tmp != Error)
            {
                WriteDataToLCD(key);
                num2 = num2*10 + tmp;
            }
            else
            {
                switch(key)
                {
                    case '=':   WriteCommandToLCD(0xC0); WriteDataToLCD(key); next = 1; break;
                }
            }
        }
        // Calculate result
        switch(func)
        {
            case '+': result = num1 + num2; break;
            case '-': result = num1 - num2; break;
            case 'x': result = num1*num2; break;
            case '/':
            {
                if(num2==0) DispError(2);
                else 
                {
                    result = num1/num2;
                    break;
                }
            }
            case '^':
            {
                if(num2 != 0) DispError(2);
                else result = num1*num1;
                break;
            }
            case 'f':
            {
                if(num2 != 0) DispError(2);
                else result = sqrt(num1);
                break;
            }
        }
        sprintf(msg, "%.2f", result);
        for(int i=0;i<16;i++)
		if(!msg[i]) break;	  // NULL Check
		else WriteDataToLCD(msg[i]);
        // Reset calculator
        next = 0;
        num1 = 0;
        num2 = 0;
        func = '.';
    }
}


/*
 * Functions used inside main for 
 * making calculator are shown below
 */

int get_num(char ch)         //convert char into int
{
	int num = 0;

	switch(ch)
	{
		case '0': num = 0; break;
		case '1': num = 1; break;
		case '2': num = 2; break;
		case '3': num = 3; break;
		case '4': num = 4; break;
		case '5': num = 5; break;
		case '6': num = 6; break;
		case '7': num = 7; break;
		case '8': num = 8; break;
		case '9': num = 9; break;
		case 'C': ClearLCDScreen(); num = Error; break;  //this is used as a clear screen and then reset by setting error
		default: num = Error; break;       //it means wrong input
	}

	return num;
}

char get_func(char chf)            //detects the errors in inputted function
{
	if(chf=='C')                   //if clear screen then clear the LCD and reset
	{ 
		ClearLCDScreen();          //clear display
		return 'e'; 
	}
	
	if( chf!='+' && chf!='-' && chf!='x' && chf!='/' )  //if input is not from allowed funtions then show error
	{ 
		DispError(1); 
		return 'e'; 
	}

	return chf;                        //function is correct so return the correct function
}


void DispError(int numb)           //displays differet error messages
{
	ClearLCDScreen();              //clear display
	
	switch(numb)
	{
	case 0: 	WriteStringToLCD("Wrong Input");      break;
	case 1: 	WriteStringToLCD("Wrong Function");   break;
    case 2:     WriteStringToLCD("Wrong Argument");   break;
	default:    WriteStringToLCD("Wrong Input");      break;
	}
}

void disp_num(int numb)            //displays number on LCD
{	
	unsigned char UnitDigit  = 0;  //It will contain unit digit of numb
	unsigned char TenthDigit = 0;  //It will contain 10th position digit of numb

	if(numb<0)
	{
		numb = -1*numb;          // Make number positive
		WriteDataToLCD('-');	 // Display a negative sign on LCD
	}

	TenthDigit = (numb/10);	                  // Findout Tenth Digit

	if( TenthDigit != 0)	                  // If it is zero, then don't display
		WriteDataToLCD(TenthDigit+0x30);	  // Make Char of TenthDigit and then display it on LCD

	UnitDigit = numb - TenthDigit*10;

	WriteDataToLCD(UnitDigit+0x30);	  // Make Char of UnitDigit and then display it on LCD
}