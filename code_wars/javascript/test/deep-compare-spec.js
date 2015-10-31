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


const testDeepCompare = (deepCompare) => {
  describe(`${deepCompare.name}`, () => {
    it('compares numbers', () => {
      expect(deepCompare(1, 1)).to.equal(true);
    });

    it('doesn\'t allow type coercion', () => {
      expect(deepCompare(1, '1')).to.not.equal(true);
    });

    it('differentiates null from undefined', () => {
      expect(deepCompare(null, undefined)).to.not.equal(true);
    });

    it('compares null values', () => {
      expect(deepCompare(null, null)).to.equal(true);
    });

    it('compares undefined values', () => {
      expect(deepCompare(undefined, undefined)).to.equal(true);
    });

    it('compares simple objects', () => {
      let sameExample = { name: 'Joe', surname: 'Smith' };
      expect(deepCompare(sameExample, sameExample)).to.equal(true);
    });

    it('compares simple objects with different key orders', () => {
      let sameExample = { name: 'Joe', surname: 'Smith' };
      let sameExample2 = { surname: 'Smith', name: 'Joe' };
      expect(deepCompare(sameExample, sameExample2)).to.equal(true);
    });

    it('returns false for differing objects', () => {
      let example = { name: 'Joe', surname: 'Smith' };
      let example2 = { name: 'Joe' };
      expect(deepCompare(example, example2)).to.equal(false);
      expect(deepCompare(example2, example)).to.equal(false);
    });

    it('compares arrays', () => {
      let sameExample = [ 1, 2, null, undefined, { name: 'Joe' } ];
      let sameExample2 = [ 1, 2, null ];
      expect(deepCompare(sameExample, sameExample)).to.equal(true);
      expect(deepCompare(sameExample, sameExample2)).to.equal(false);
    });

    it('returns false for arrays with different element orders', () => {
      let sameExample = [ 1, 2, 3 ];
      let sameExample2 = [ 1, 3, 2 ];
      expect(deepCompare(sameExample, sameExample2)).to.equal(false);
    });

    it('compares nested objects', () => {
      let example = {
        foo: {
          bar: {
            qux: 'hello'
          }
        }
      };
      let errorExample = {
        foo: {
          bar: 'nonono'
        }
      };

      expect(deepCompare(example, example)).to.equal(true);
      expect(deepCompare(example, errorExample)).to.equal(false);
    });

    it('compares nested objects inside arrays', () => {
      let example = [{
        foo: {
          bar: {
            qux: 'hello'
          }
        }
      }];
      let errorExample = [{
        foo: {
          bar: 'nonono'
        }
      }, 'test'];

      expect(deepCompare(example, example)).to.equal(true);
      expect(deepCompare(example, errorExample)).to.equal(false);
    });
  });
};


testDeepCompare(deepCompareES5);
testDeepCompare(deepCompareES6);
