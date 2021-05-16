/*file:example.i*/
%module example
%{
#include "stdio.h"
extern float fval;
extern double dval; 
extern int fact(int);
extern int my_mod(int n, int m);
%}

extern double dval;
extern float  fval;
extern int fact(int);
extern int my_mod(int n, int m);


FILE* fopen(const char* filename, const char* mode);
int fputs(const char* str, FILE* f);
int fclose(FILE* f);
