/**
Create a function that returns the lowest product of 4 consecutive numbers
in a given string of numbers.

This should only work is the number has 4 digits of more.
If not, return "Number is too small".
*/

import chai from 'chai';
import { lowestProductES5, lowestProductES6 } from '../lowest-4-number-product';

const expect = chai.expect;


const testLowestProduct = (lowestProduct) => {
  describe(`${lowestProduct.name}`, () => {
    it('finds the lowest product of 4 consecutive numbers', () => {
      expect(lowestProduct('123456789')).to.equal(24);
      expect(lowestProduct('234567899')).to.equal(120);
    });

    it('handles cases where the 4 lowest numbers are in the middle', () => {
      expect(lowestProduct('99999111199999')).to.equal(1);
    });

    it('ensures the numbers are consecutive (no sorting functions)', () => {
      expect(lowestProduct('1234111')).to.equal(4);
    });

    it('returns "Number is too small" if input is too small', () => {
      expect(lowestProduct('333')).to.equal('Number is too small');
    });
  });
};


testLowestProduct(lowestProductES5);
testLowestProduct(lowestProductES6);
