#include <stdio.h>

void pointer_to_reference(char* string)
{
	printf("%s\n", string);
}

int main(void)
{
	char buf[] = "Hello World\n"; 
	pointer_to_reference(buf);
	return 0;
}


