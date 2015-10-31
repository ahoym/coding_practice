/**
ROT13 is a simple letter substitution cipher that replaces a letter
with the letter 13 letters after it in the alphabet. ROT13 is an example of
the Caesar cipher.

Create a function that takes a string and returns the string ciphered with
Rot13. If there are numbers or special characters included in the string,
they should be returned as they are. Only letters from the latin/english
alphabet should be shifted, like in the original Rot13 'implementation'.
*/

import chai from 'chai';
import { rot13ES5, rot13ES6 } from '../rot13';

const expect = chai.expect;


const testRot13 = (rot13) => {
  describe(`${rot13.name}`, () => {
    it('caesar ciphers a string by 13 characters', () => {
      expect(rot13('test')).to.equal('grfg');
    });

    it('encrypts strings with capitals', () => {
      expect(rot13('Test')).to.equal('Grfg');
    });

    it('doesn\'t encrypt spaces', () => {
      expect(rot13('test Test')).to.equal('grfg Grfg');
    });

    it('only encrypts encrypt letters', () => {
      expect(rot13('!!!123')).to.equal('!!!123');
    });

    it('encrypts strings with spaces and punctuation', () => {
      expect(rot13('10 + 2 is twelve.')).to.equal('10 + 2 vf gjryir.');
    });
  });
};


testRot13(rot13ES5);
testRot13(rot13ES6);
