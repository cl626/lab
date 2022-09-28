#include "uart.h"
#include "vga.h"
#include "vsprintf.h"
#include <stdarg.h>


char kBuf[400];
int myPrintk(int color, const char* format, ...)
{
    va_list args;
    va_start(args, format);
    int count = vsprintf(kBuf, format, args);
    va_end(args);
    append2screen(kBuf, color);
    uart_put_chars(kBuf);
    return count;
}

int myPrintk2(int color, const char* format, ...)
{
    va_list args;
    va_start(args, format);
    int count = vsprintf(kBuf, format, args);
    va_end(args);
    append2screen2(kBuf, color);
    uart_put_chars(kBuf);
    return count;
}

char uBuf[400];
int myPrintf(int color, const char* format, ...)
{
    va_list args;
    va_start(args, format);
    int count = vsprintf(uBuf, format, args);
    va_end(args);
    append2screen(uBuf, color);
    uart_put_chars(uBuf);
    return count;
}

int myPrintf2(int color, const char* format, ...)
{
    va_list args;
    va_start(args, format);
    int count = vsprintf(uBuf, format, args);
    va_end(args);
    append2screen2(uBuf, color);
    uart_put_chars(uBuf);
    return count;
}

int myPrintk3(int color, const char* format, ...)
{
    va_list args;
    va_start(args, format);
    int count = vsprintf(uBuf, format, args);
    va_end(args);
    append2screen3(uBuf, color);
    uart_put_chars(uBuf);
    return count;
}
