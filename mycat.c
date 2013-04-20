#include<stdio.h>
#include<stdlib.h>

int main(int argc, char *argv[])
{
  int c;
	FILE *file;

	file = fopen(argv[1],"r");
	if(file) {
		while((c = getc(file)) != EOF)
			putchar(c);
		fclose(file);
	}
	else {
		fputs("File not found.\n", stderr);
		exit(1);
	}
}
