#include "assert.h"

int k;
int main() {
    int i;
    //k = __VERIFIER_nondet_int();
    if (!(0 <= k && k <= 10)) return 0;
    for (i = 0; i < LARGE_INT*k; i += k) ;
    __VERIFIER_assert(i == LARGE_INT*k);
    return 0;
}
