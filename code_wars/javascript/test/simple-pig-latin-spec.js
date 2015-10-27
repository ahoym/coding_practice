/*
Move the first letter of each word to the end of it,
then add 'ay' to the end of the word.

pigIt('Pig latin is cool'); // igPay atinlay siay oolcay
*/

import chai from 'chai';
import { simplePigLatinES5, simplePigLatinES6 } from '../simple-pig-latin';

const expect = chai.expect;


describe('simplePigLatin, ES5', function() {
  it('it moves the first letter of each word to the end, + ay', function() {
    let expectedStr = 'igPay atinlay siay oolcay';

    expect(simplePigLatinES5('Pig latin is cool')).to.equal(expectedStr);
  });

  it('it doesn\'t worry about punctuation', function() {
    let expectedStr = 'hisTay siay ymay tringsay';

    expect(simplePigLatinES5('This is my string')).to.equal(expectedStr);
  });
});


describe('simplePigLatin, ES6', () => {
  it('it moves the first letter of each word to the end, + ay', () => {
    let expectedStr = 'igPay atinlay siay oolcay';

    expect(simplePigLatinES6('Pig latin is cool')).to.equal(expectedStr);
  });

  it('it doesn\'t worry about punctuation', () => {
    let expectedStr = 'hisTay siay ymay tringsay';

    expect(simplePigLatinES6('This is my string')).to.equal(expectedStr);
  });
});
