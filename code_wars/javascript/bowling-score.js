/**
Write a function for calculating the score of a 10 pin bowling game.
The input for the function is a list of pins knocked down per roll
for one player. Output is the player's total score.
*/

'use strict';


var bowlingScoreES5 = function (rolls) {
  var score = 0;
  var i = 0;
  var frame = 1;

  while (frame <= 10) {
    score += rolls[i] + rolls[i + 1];

    if (rolls[i] + rolls[i + 1] >= 10) {
      score += rolls[i + 2];
    }
    // Not a strike
    if (rolls[i] !== 10) {
      i += 1;
    }

    i += 1;
    frame += 1;
  }

  return score;
};

// There's nothing I would really do to make it cleaner or different in ES6
const bowlingScoreES6 = bowlingScoreES5;


export { bowlingScoreES5, bowlingScoreES6 };
