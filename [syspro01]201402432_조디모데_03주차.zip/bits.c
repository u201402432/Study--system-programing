/* 
 *  
 *  학번 :     201402432      
 *  이름 :   : v디�
 *  
 */

#include "btest.h"
#include <limits.h>

/* 
 * bitAnd - ~,|  만 사용
 *   Example: bitAnd(6, 5) = 4
 *   사용가능 기호: ~ |
 *   점수: 1
 */
int bitAnd(int x, int y) {
     return ~((~x)|(~y)) ;
}


/* 
 * getByte - ! ~ & ^ | + << >> 만 사용 
 *   Examples: getByte(0x12345678,1) = 0x56
 *   점수: 2
 */
int getByte(int x, int n) {
	int result = 0 ;
	n = n << 3 ;
	result = x >> n ;
	result = result & 0xFF ;

     return result ;
}

/* 
 *  logicalShift - shift x to the right by n, using a logical shift
 *   Can assume that 0 <= n <= 31
 *   Examples: logicalShift(0x87654321,4) = 0x08765432
 *   사용가능한 기호 : ~ & ^ | + << >>
 *   점수 : 3 
 */
int logicalShift(int x, int n) {
	int result = 0 ;
	int a = x >> n ;
	int b = ~n +33 ;
	b = 1 << b ;
	b += (~0) ;
	result = a&b ;

	return result ;
}
/*
 *  bitCount - returns count of number of 1's in word
 *   Examples: bitCount(5) = 2, bitCount(7) = 3
 *  사용가능한 기호 : ! ~ & ^ | + << >>
 *  점수 : 4
 */
int bitCount(int x) {
	int a = 0x1 ;
	int result = 0 ;

	a = a|(a<<8) ;
	a = a|(a<<16) ;
	
	result = a & x ;
	result += a & (x >>1) ;
	result += a & (x >>2) ;
	result += a & (x >>3) ;
	result += a & (x >>4) ;
	result += a & (x >>5) ;
	result += a & (x >>6) ;
	result += a & (x >>7) ;

	result += result >> 16 ;
	result += result >> 8 ;
	result &= 0xFF ;

	return result ;
}
/* 
 * tmin - return minimum two's complement integer 
 *  사용가능한 기호: ! ~ & ^ | + << >>
 *  점수 : 1
 */
int tmin(void) {
	return (1 << 31) ;
}
/* 
 * fitsBits - return 1 if x can be represented as an 
 *  n-bit, two's complement integer.
 *   1 <= n <= 32
 *  Examples: fitsBits(5,3) = 0, fitsBits(-4,3) = 1
 *  사용가능 기호 : ! ~ & ^ | + << >>
 *  점수: 2
 */
int fitsBits(int x, int n) {
	int y = 33 + ~n ;
	int result = (x<<y) ;
	result = result >> y ;
	result = result^x ;

  return !result ;
}

/* 
 *  isPositive - return 1 if x > 0, return 0 otherwise 
 *  Example: isPositive(-1) = 0.
 *  사용가능 기호: ! ~ & ^ | + << >>
 *  점수: 3
 */  

int isPositive(int x) {

	int result = 0 ;
	result = (x>>31)&1 ;
	
	return !result ;
}

