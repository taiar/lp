#include <stdio.h>

int main() {

  int i;
  int v = 0;

  for(i = 0; i < 100; i+= 1)
    v += i * 3;

  printf("O valor eh %d", v);

  return 0;

}
