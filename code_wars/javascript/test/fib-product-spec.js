/**
The Fibonacci numbers are the numbers in the following integer sequence (Fn):

0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, ...
such as

F(n) = F(n-1) + F(n-2) with F(0) = 0 and F(1) = 1.
Given a number, say prod (for product), we search two Fibonacci numbers,
F(n) and F(n+1) verifying:

F(n) * F(n+1) = prod.

Your function productFib takes an integer (prod) and returns an array:

[F(n), F(n+1), true] // success case

if F(n) * F(n+1) = prod or returns

[F(m), F(m+1), false] // fail case

if you don't find two consecutive F(m) verifying F(m) * F(m+1) = prod.
F(m) will be the smallest one such as F(m) * F(m+1) > prod.
*/

import chai from 'chai';
import { fibProductES5, fibProductES6 } from '../fib-product';

const expect = chai.expect;


const testFibProduct = (fibProduct) => {
  describe(`${fibProduct.name}`, () => {
    describe('for inputs with consecutive fibonacci number factors', () => {
      it('returns true and the fibonacci numbers', () => {
        expect(fibProduct(4895)).to.deep.equal([ 55, 89, true ]);
        expect(fibProduct(74049690)).to.deep.equal([ 6765, 10946, true ]);
        expect(fibProduct(193864606)).to.deep.equal([ 10946, 17711, true ]);
        expect(fibProduct(602070)).to.deep.equal([ 610, 987, true ]);
      });
    });

    describe('for inputs with no consecutive fibonacci number factors', () => {
      it('returns false and the fibonacci numbers', () => {
        expect(fibProduct(5895)).to.deep.equal([ 89, 144, false ]);
        expect(fibProduct(84049690)).to.deep.equal([ 10946, 17711, false ]);
        expect(fibProduct(447577)).to.deep.equal([ 610, 987, false ]);
      });
    });
  });
};

testFibProduct(fibProductES5);
testFibProduct(fibProductES6);
