#include "io.h"

void init8253(void){
		outb( 0x43, 0x34);
		outb( 0x40, 156);
		outb( 0x40, 46);
}
