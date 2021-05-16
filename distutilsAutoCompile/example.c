#define RED 0xff0000
#define BLUE 0x0000ff
#define GREEN 0x00ff00

double dval = 3.00;
float  fval = 2.11;

int fact(int n)
{
    if(n<=1)
    {
        return 1;
    }
    else
    {
        return n*fact(n-1);
    }
}

int my_mod(int n, int m)
{
    return (n%m);
}

