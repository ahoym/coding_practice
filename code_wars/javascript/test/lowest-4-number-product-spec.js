import chai from 'chai';
import { lowestProductES5, lowestProductES6 } from '../lowest-4-number-product';

const expect = chai.expect;


describe('lowestProduct, ES5', function() {
  it('finds the lowest product of 4 consecutive numbers', function() {
    expect(lowestProductES5('123456789')).to.equal(24);
    expect(lowestProductES5('234567899')).to.equal(120);
  });

  it('handles cases where the 4 lowest numbers are in the middle', function() {
    expect(lowestProductES5('99999111199999')).to.equal(1);
  });

  it('ensures the numbers are consecutive (no sorting functions)', function() {
    expect(lowestProductES5('1234111')).to.equal(4);
  });

  it('returns "Number is too small" if input is too small', function() {
    expect(lowestProductES5('333')).to.equal('Number is too small');
  });
});


describe('lowestProduct, ES6', () => {
  it('finds the lowest product of 4 consecutive numbers', () => {
    expect(lowestProductES6('123456789')).to.equal(24);
    expect(lowestProductES6('234567899')).to.equal(120);
  });

  it('handles cases where the 4 lowest numbers are in the middle', () => {
    expect(lowestProductES6('99999111199999')).to.equal(1);
  });

  it('ensures the numbers are consecutive (no sorting functions)', () => {
    expect(lowestProductES6('1234111')).to.equal(4);
  });

  it('returns "Number is too small" if input is too small', () => {
    expect(lowestProductES6('333')).to.equal('Number is too small');
  });
});
