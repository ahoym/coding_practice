/**
Comparing objects is not an easy task in JavaScript. The comparison operator
only returns true if both variables point to the same object, that's why two
objects with the same properties and values are different for JavaScript,
like this:

var a = { name: 'Joe' };
var b = { name: 'Joe' };
a == b;  //-> false

Sometimes it's really useful to detect when two objects have the same values.

Your task is to develop the deepCompare function to test if two objects have
the same properties and values. Remember that an object can contain other
objects. The function should also be able to correctly compare simple values,
like strings and numbers (without using type cohersion, please).

To make things simpler, it will only have to deal with simple values and
objects and arrays containing strings, booleans and numbers, without taking
into account regular expressiones, dates and functions.
*/

import chai from 'chai';
import { deepCompareES5, deepCompareES6 } from '../deep-compare';

const expect = chai.expect;


describe('deepCompare, ES5', function() {
  it('compares numbers', function() {
    expect(deepCompareES5(1, 1)).to.equal(true);
  });

  it('doesn\'t allow type coercion', function() {
    expect(deepCompareES5(1, '1')).to.not.equal(true);
  });

  it('differentiates null from undefined', function() {
    expect(deepCompareES5(null, undefined)).to.not.equal(true);
  });

  it('compares null values', function() {
    expect(deepCompareES5(null, null)).to.equal(true);
  });

  it('compares undefined values', function() {
    expect(deepCompareES5(undefined, undefined)).to.equal(true);
  });

  it('compares simple objects', function() {
    var sameExample = { name: 'Joe', surname: 'Smith' };
    expect(deepCompareES5(sameExample, sameExample)).to.equal(true);
  });

  it('compares simple objects with different key orders', function() {
    var sameExample = { name: 'Joe', surname: 'Smith' };
    var sameExample2 = { surname: 'Smith', name: 'Joe' };
    expect(deepCompareES5(sameExample, sameExample2)).to.equal(true);
  });

  it('returns false for differing objects', function() {
    var example = { name: 'Joe', surname: 'Smith' };
    var example2 = { name: 'Joe' };
    expect(deepCompareES5(example, example2)).to.equal(false);
    expect(deepCompareES5(example2, example)).to.equal(false);
  });

  it('compares arrays', function() {
    var sameExample = [ 1, 2, null, undefined, { name: 'Joe' } ];
    var sameExample2 = [ 1, 2, null ];
    expect(deepCompareES5(sameExample, sameExample)).to.equal(true);
    expect(deepCompareES5(sameExample, sameExample2)).to.equal(false);
  });

  it('returns false for arrays with different element orders', function() {
    var sameExample = [ 1, 2, 3 ];
    var sameExample2 = [ 1, 3, 2 ];
    expect(deepCompareES5(sameExample, sameExample2)).to.equal(false);
  });

  it('compares nested objects', function() {
    var example = {
      foo: {
        bar: {
          qux: 'hello'
        }
      }
    };
    var errorExample = {
      foo: {
        bar: 'nonono'
      }
    };

    expect(deepCompareES5(example, example)).to.equal(true);
    expect(deepCompareES5(example, errorExample)).to.equal(false);
  });

  it('compares nested objects inside arrays', function() {
    var example = [{
      foo: {
        bar: {
          qux: 'hello'
        }
      }
    }];
    var errorExample = [{
      foo: {
        bar: 'nonono'
      }
    }, 'test'];

    expect(deepCompareES5(example, example)).to.equal(true);
    expect(deepCompareES5(example, errorExample)).to.equal(false);
  });
});


describe('deepCompare, ES6', () => {
  it('compares numbers', () => {
    expect(deepCompareES6(1, 1)).to.equal(true);
  });

  it('doesn\'t allow type coercion', () => {
    expect(deepCompareES6(1, '1')).to.not.equal(true);
  });

  it('differentiates null from undefined', () => {
    expect(deepCompareES6(null, undefined)).to.not.equal(true);
  });

  it('compares null values', () => {
    expect(deepCompareES6(null, null)).to.equal(true);
  });

  it('compares undefined values', () => {
    expect(deepCompareES6(undefined, undefined)).to.equal(true);
  });

  it('compares simple objects', () => {
    const sameExample = { name: 'Joe', surname: 'Smith' };
    expect(deepCompareES6(sameExample, sameExample)).to.equal(true);
  });

  it('compares simple objects with different key orders', () => {
    const sameExample = { name: 'Joe', surname: 'Smith' };
    const sameExample2 = { surname: 'Smith', name: 'Joe' };
    expect(deepCompareES6(sameExample, sameExample2)).to.equal(true);
  });

  it('returns false for differing objects', () => {
    const example = { name: 'Joe', surname: 'Smith' };
    const example2 = { name: 'Joe' };
    expect(deepCompareES6(example, example2)).to.equal(false);
    expect(deepCompareES6(example2, example)).to.equal(false);
  });

  it('compares arrays', () => {
    const sameExample = [ 1, 2, null, undefined, { name: 'Joe' } ];
    const sameExample2 = [ 1, 2, null ];
    expect(deepCompareES6(sameExample, sameExample)).to.equal(true);
    expect(deepCompareES6(sameExample, sameExample2)).to.equal(false);
  });

  it('returns false for arrays with different element orders', () => {
    const sameExample = [ 1, 2, 3 ];
    const sameExample2 = [ 1, 3, 2 ];
    expect(deepCompareES6(sameExample, sameExample2)).to.equal(false);
  });

  it('compares nested objects', () => {
    const example = {
      foo: {
        bar: {
          qux: 'hello'
        }
      }
    };
    const errorExample = {
      foo: {
        bar: 'nonono'
      }
    };

    expect(deepCompareES6(example, example)).to.equal(true);
    expect(deepCompareES6(example, errorExample)).to.equal(false);
  });

  it('compares nested objects inside arrays', () => {
    const example = [{
      foo: {
        bar: {
          qux: 'hello'
        }
      }
    }];
    const errorExample = [{
      foo: {
        bar: 'nonono'
      }
    }, 'test'];

    expect(deepCompareES6(example, example)).to.equal(true);
    expect(deepCompareES6(example, errorExample)).to.equal(false);
  });
});
