#include <stdio.h>

int main()
{
  int c, n, f = 1;
  for (c = 1; c <= n; c++)
    f = f * c;

  printf("Factorial de %d = %d\n", n, f);

  return 0;
}
