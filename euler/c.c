#include <stdio.h>
#include <stdlib.h>

unsigned long int powa(unsigned long int n, unsigned long int e) {
  unsigned long int i = 0;
  unsigned long int saida = 1;

  for(;i < e; i += 1)
    saida = saida * n;

  return saida;
}

int check_validation(unsigned long int m, unsigned long int n) {
  // printf("Potencia: %d\n", powa(m, 3));
  return ((powa(m, 3) % n) == 1) ? 1 : 0;
}

int main() {

  // unsigned long int n = 13082761331670030;
  unsigned long int n = 91112;
  unsigned long int i = 2;
  // printf("%d\n", check_validation(8, 91));
  // printf("Ate %lu\n", n);
  for (; i < n; i += 1) {
    if(check_validation(i, n) == 1)
      printf("%lu\n", i);
    // else
    //   printf("\r    %lu", i);
  }

  return 0;
}