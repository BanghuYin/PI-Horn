extern int __VERIFIER_nondet_int();
extern void __VERIFIER_error();

int id(int x) {
  if (x==0) return 0;
  return id(x-1) + 1;
}
int input;
int main(void) {
  //int input = 15;
  int result = id(input);
  if (result != 15) {
    ERROR: __VERIFIER_error();
  }
}