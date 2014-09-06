#include <stdio.h>

int main() {
  int i = 999999999;
  int li = i;
  while(i > 0) {
    li = i;
    i += 1;
  }
  printf("%d\n", li);
  printf("De outra forma...\n");

  int bytes = sizeof(int);
  int bits = bytes * 8;
  i = 0;
  long int n = 2;
  for(;i<bits;i++)
    n *= 2;

  printf("%ld\n", (n/4)-1);
  return 0;
}
