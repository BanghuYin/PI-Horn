# 1 "MAP/SAFE-exbench/TRACER-testwp5.tmp.c"
# 1 "<command-line>"
# 1 "MAP/SAFE-exbench/TRACER-testwp5.tmp.c"
# 21 "MAP/SAFE-exbench/TRACER-testwp5.tmp.c"
int x;
void main(){
  int y;

 // x=0;

  if (y>0)
    x=x+1;
  else
    x=x+2;

  x++;
  x=x+2;
  x=x+3;


  __VERIFIER_assert(!( x > 50 ));

}
