#include <stdio.h>

typedef struct {
  int dummy1;
  volatile int (*coolFunct)();
  char dummy2;
} Foo;

typedef struct {
  volatile Foo *foo;
  int dummy1;
  char dumm2;
} Bar;

int func1() { printf("Hello, world!\n"); }

int main() {
  char doo[10];
  Foo foo;
  volatile Bar *bar;

  bar = (Bar *)malloc(sizeof(Bar));

  bar->foo = &foo;
  bar->foo->coolFunct = func1;

  doo[3] = 'A';

  bar->foo->coolFunct();
  func1();

  free(bar);
  return 0;
}
