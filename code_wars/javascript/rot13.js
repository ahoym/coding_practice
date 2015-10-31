/**
ROT13 is a simple letter substitution cipher that replaces a letter
with the letter 13 letters after it in the alphabet. ROT13 is an example of
the Caesar cipher.

Create a function that takes a string and returns the string ciphered with
Rot13. If there are numbers or special characters included in the string,
they should be returned as they are. Only letters from the latin/english
alphabet should be shifted, like in the original Rot13 'implementation'.
*/

'use strict';


function rot13ES5(message) {
  return message.replace(/[a-zA-Z]/g, function (letter) {
    var ascii = letter.charCodeAt();
    var asciiLimit = letter > 'Z' ? 122 : 90;
    var encryptedAscii = ascii + 13 > asciiLimit ? ascii - 13 : ascii + 13;

    return String.fromCharCode(encryptedAscii);
  });
}


const rot13ES6 = (message) => {
  return message.replace(/[a-zA-Z]/g, (letter) => {
    let newAscii = letter.charCodeAt() + 13;
    let asciiLimit = letter > 'Z' ? 122 : 90;
    let encryptedAscii = newAscii > asciiLimit ? newAscii - 26 : newAscii;

    return String.fromCharCode(encryptedAscii);
  });
};


export { rot13ES5, rot13ES6 };
