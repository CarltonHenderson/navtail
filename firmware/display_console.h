#ifndef navtail_display_console_h
#define navtail_display_console_h

#include "application.h"

typedef void (*printer_t)(const char *); // Function Pointer

NavTailDisplay MakeDisplayConsole(printer_t);

#endif
