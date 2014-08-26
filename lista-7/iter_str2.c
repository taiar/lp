#include <stdio.h>

int main() {
  char* s = "Hello!";
  char* s1 = "Fernando!";
  char* s2 = "Magno!";
  char* s3 = "Quintao!";
  char* s4 = "Pereira!";
  char* c = s;
  int i;
  for (i = 0; i < 41; i++) {
    printf("%c", *c);
    c++;
  }
  printf("\n");
}
