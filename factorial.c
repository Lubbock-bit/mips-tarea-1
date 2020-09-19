#include <stdio.h>
 
int main()
{
  int c, n, f = 1;
 
  printf("Ingrese un numero para calcular su factorial ");
  scanf("%d", &n);
  for (c = 1; c <= n; c++)
    f = f * c;
 
  printf("Factorial de %d = %d\n", n, f);
 
  return 0;
}
