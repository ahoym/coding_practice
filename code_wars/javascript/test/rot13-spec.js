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


describe('rot13, ES5', function() {
  it('caesar ciphers a string by 13 characters', function() {
    expect(rot13ES5('test')).to.equal('grfg');
  });

  it('encrypts strings with capitals', function() {
    expect(rot13ES5('Test')).to.equal('Grfg');
  });

  it('doesn\'t encrypt spaces', function() {
    expect(rot13ES5('test Test')).to.equal('grfg Grfg');
  });

  it('only encrypts encrypt letters', function() {
    expect(rot13ES5('!!!123')).to.equal('!!!123');
  });

  it('encrypts strings with spaces and punctuation', function() {
    expect(rot13ES5('10 + 2 is twelve.')).to.equal('10 + 2 vf gjryir.');
  });
});


describe('rot13, ES6', () => {
  it('caesar ciphers a string by 13 characters', () => {
    expect(rot13ES6('test')).to.equal('grfg');
  });

  it('encrypts strings with capitals', () => {
    expect(rot13ES6('Test')).to.equal('Grfg');
  });

  it('doesn\'t encrypt spaces', () => {
    expect(rot13ES6('test Test')).to.equal('grfg Grfg');
  });

  it('only encrypts encrypt letters', () => {
    expect(rot13ES6('!!!123')).to.equal('!!!123');
  });

  it('encrypts strings with spaces and punctuation', () => {
    expect(rot13ES6('10 + 2 is twelve.')).to.equal('10 + 2 vf gjryir.');
  });
});
