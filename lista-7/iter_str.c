#include <stdio.h>

struct mySt {
	  int i1, i2, i3, i4, sentinel;
};

int main(int argc, char** argv) {
  struct mySt s;
  int *p1, *p4;
  s.i1 = 1;
  s.i2 = 2;
  s.i3 = 3;
  s.i4 = 4;

  p1 = ( (int*) &s);
  p4 = &(s.sentinel);
  do {
    printf("field = %d\n", *p1);
    p1++;
  } while (p1 != p4);
}
