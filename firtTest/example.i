/*file:example.i*/

%module example
%{
extern float fval;
extern double dval; 
extern int fact(int);
extern int my_mod(int n, int m);
%}

extern double dval;
extern float  fval;
extern int fact(int);
extern int my_mod(int n, int m);
