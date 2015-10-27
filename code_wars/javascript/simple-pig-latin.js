/*
Move the first letter of each word to the end of it,
then add 'ay' to the end of the word.

pigIt('Pig latin is cool'); // igPay atinlay siay oolcay
*/

'use strict';

function simplePigLatinES5(str) {
  return str.split(' ')
    .map(function(word) {
      return word.replace(/^(.)(.*)/, '$2$1ay');
    })
    .join(' ');
}

const simplePigLatinES6 = (str) => {
  return str.split(' ').map(word => word.replace(/^(.)(.*)/, '$2$1ay')).join(' ');
};

export { simplePigLatinES5, simplePigLatinES6 };
