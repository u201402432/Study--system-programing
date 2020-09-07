/* Testing Code */

#include <limits.h>


/* The list of puzzles selected for this instance of the lab */
int test_bitAnd(int x, int y)
{
  return x&y;
}

int test_logicalShift(int x, int n) {
  unsigned u = (unsigned) x;
  unsigned shifted = u >> n;
  return (int) shifted;
}

int test_getByte(int x, int n)
{
    unsigned char byte;
    switch(n) {
    case 0:
      byte = x;
      break;
    case 1:
      byte = x >> 8;
      break;
    case 2:
      byte = x >> 16;
      break;
    default:
      byte = x >> 24;
      break;
    }
    return (int) (unsigned) byte;
}

int test_bitCount(int x) {
  int result = 0;
  int i;
  for (i = 0; i < 32; i++)
    result +=  (x >> i) & 0x1;
  return result;
}

int test_fitsBits(int x, int n)
{
  int TMin_n = -(1 << (n-1));
  int TMax_n = (1 << (n-1)) - 1;
  return x >= TMin_n && x <= TMax_n;
		
}

int test_tmin(void) {
  return 0x80000000;
}

int test_isPositive(int x) {
  return x > 0;
}
