extern void __VERIFIER_error() __attribute__ ((__noreturn__));
extern unsigned int __VERIFIER_nondet_uint(void);

void __VERIFIER_assert(int cond) {
  if (!(cond)) {
    ERROR: __VERIFIER_error();
  }
  return;
}

unsigned int x ;
unsigned int y ;

int main(void) {

  while (x < 99) {
    if (y % 2 == 0) {
      x++;
    } else {
      x += 2;
    }
  }

  __VERIFIER_assert((x % 2) == (y % 2));
}