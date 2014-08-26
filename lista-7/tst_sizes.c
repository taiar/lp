#include <stdio.h>

int main () {

  struct tst {
    char     a;
    int      b;
    int      c;
    double   d;
    long int e;
  };

  struct tst a;

  printf("%d %d %d %d %d %d\n", 
    sizeof(a.a),
    sizeof(a.b),
    sizeof(a.c),
    sizeof(a.d),
    sizeof(a.e),
    sizeof(a)
  );

  return 0;
}
