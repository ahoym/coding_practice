/**
Write a function() or calculating the score of a 10 pin bowling game.
The input for the function()s a list of pins knocked down per roll
for one player. Output is the player's total score.
*/

import chai from 'chai';
import bowlingScoreES5 from '../bowling-score';

const expect = chai.expect;


describe('bowlingScore, ES5 and ES6', function () {
  it('sums up the scores of a bowling game', function () {
    var game = [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ];
    var game2 = [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ];
    var game3 = [ 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 ];

    expect(bowlingScoreES5(game)).to.equal(0);
    expect(bowlingScoreES5(game2)).to.equal(20);
    expect(bowlingScoreES5(game3)).to.equal(80);
  });

  it('scores spares', function () {
    var game = [ 9, 1, 9, 1, 9, 1, 9, 1, 9, 1, 9, 1, 9, 1, 9, 1, 9, 1, 9, 1, 9 ];
    expect(bowlingScoreES5(game)).to.equal(190);
  });

  it('scores strikes', function () {
    var game = [ 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10 ];
    expect(bowlingScoreES5(game)).to.equal(300);
  });

  it('scores spares and strikes combined', function () {
    var game = [ 10, 5, 5, 10, 5, 5, 10, 5, 5, 10, 5, 5, 10, 5, 5, 10 ];
    expect(bowlingScoreES5(game)).to.equal(200);
  });

  it('scores spares in the 10th frame', function () {
    var game = [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1, 0 ];
    expect(bowlingScoreES5(game)).to.equal(11);
  });

  it('scores strikes in the 10th frame', function () {
    var game = [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1, 0 ];
    expect(bowlingScoreES5(game)).to.equal(12);
  });
});
