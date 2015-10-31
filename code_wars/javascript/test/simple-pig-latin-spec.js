/*
Move the first letter of each word to the end of it,
then add 'ay' to the end of the word.

pigIt('Pig latin is cool'); // igPay atinlay siay oolcay
*/

import chai from 'chai';
import { simplePigLatinES5, simplePigLatinES6 } from '../simple-pig-latin';

const expect = chai.expect;


const testSimplePigLatin = (simplePigLatin) => {
  describe(`${simplePigLatin.name}`, () => {
    it('it moves the first letter of each word to the end, + ay', () => {
      let expectedStr = 'igPay atinlay siay oolcay';
      expect(simplePigLatin('Pig latin is cool')).to.equal(expectedStr);
    });

    it('it doesn\'t worry about punctuation', () => {
      let expectedStr = 'hisTay siay ymay tringsay';
      expect(simplePigLatin('This is my string')).to.equal(expectedStr);
    });
  });
};


testSimplePigLatin(simplePigLatinES5);
testSimplePigLatin(simplePigLatinES6);
