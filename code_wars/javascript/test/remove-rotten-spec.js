/**
Our fruit guy has a bag of fruits (array of strings) where some
fruits are rotten, he wants to replace all the rotten fruits by good ones.

For example, given this array ["apple","rottenBanana","apple"] the
replaced array should be ["apple","banana","apple"]. Your task is to implement
a method that will take as an argument an array of strings containing fruits
and should return an array of strings where all the rotten fruits are
replaced by good ones.

Note: If the array is null or empty you should return empty array ([]).
The rotten fruit name will be in this format rottenFruitname where is
the 1st letter of the fruit name is uppercase.

NB: The returned array should be in LOWER case.
*/

import { removeRottenES5, removeRottenES6 } from '../remove-rotten';
import chai from 'chai';

const expect = chai.expect;


describe('removeRotten, ES5', function() {
  it('given a fruit array, replaces rotten fruit', function() {
    var fruits = ['apple', 'rottenBanana', 'rottenApple', 'pineapple', 'kiwi'];
    var expectedFruits = ['apple', 'banana', 'apple', 'pineapple', 'kiwi'];

    expect(removeRottenES5(fruits)).to.deep.equal(expectedFruits);
  });

  it('doesn\'t replace any fruit if they\'re all good', function() {
    var fruits = ['apple', 'banana', 'kiwi', 'melone', 'orange'];
    var expectedFruits = ['apple', 'banana', 'kiwi', 'melone', 'orange'];

    expect(removeRottenES5(fruits)).to.deep.equal(expectedFruits);
  });

  it('replaces all fruit if they\'re all bad', function() {
    var fruits = [
      'rottenApple',
      'rottenBanana',
      'rottenApple',
      'rottenPineapple',
      'rottenKiwi'
    ];
    var expectedFruits = ['apple', 'banana', 'apple', 'pineapple', 'kiwi'];

    expect(removeRottenES5(fruits)).to.deep.equal(expectedFruits);
  });

  it('returns an empty array if the input is null', function() {
    expect(removeRottenES5(null)).to.deep.equal([]);
  });

  it('returns an empty array if the input is undefined', function() {
    expect(removeRottenES5(undefined)).to.deep.equal([]);
  });

  it('returns an empty array if the input is empty', function() {
    expect(removeRottenES5([])).to.deep.equal([]);
  });
});


describe('removeRotten, ES6', () => {
  it('given a fruit array, replaces rotten fruit', () => {
    let fruits = ['apple', 'banana', 'kiwi', 'melone', 'orange'];
    let expectedFruits = ['apple', 'banana', 'kiwi', 'melone', 'orange'];

    expect(removeRottenES6(fruits)).to.deep.equal(expectedFruits);
  });

  it('doesn\'t replace any fruit if they\'re all good', () => {
    let fruits = ['apple', 'banana', 'kiwi', 'melone', 'orange'];
    let expectedFruits = ['apple', 'banana', 'kiwi', 'melone', 'orange'];

    expect(removeRottenES6(fruits)).to.deep.equal(expectedFruits);
  });

  it('replaces all fruit if they\'re all bad', () => {
    var fruits = [
      'rottenApple',
      'rottenBanana',
      'rottenApple',
      'rottenPineapple',
      'rottenKiwi'
    ];
    var expectedFruits = ['apple', 'banana', 'apple', 'pineapple', 'kiwi'];

    expect(removeRottenES6(fruits)).to.deep.equal(expectedFruits);
  });

  it('returns an empty array if the input is null', () => {
    expect(removeRottenES6(null)).to.deep.equal([]);
  });

  it('returns an empty array if the input is undefined', () => {
    expect(removeRottenES6(undefined)).to.deep.equal([]);
  });

  it('returns an empty array if the input is empty', () => {
    expect(removeRottenES6([])).to.deep.equal([]);
  });
});
