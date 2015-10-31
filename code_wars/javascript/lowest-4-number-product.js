/**
Create a function that returns the lowest product of 4 consecutive numbers
in a given string of numbers.

This should only work is the number has 4 digits of more.
If not, return "Number is too small".
*/

'use strict';


/**
 * Helper function, computes the product of a 4 number array
 * @param {array} nums of 4 integers
 * @return {Number} the product of the 4 input numbers
 */
function consecutiveProduct(nums) {
  return nums.reduce(function (product, num) {
    return product *= num;
  }, 1);
}

function lowestProductES5(input) {
  var nums;
  var lowest;
  var i;
  var compare;

  if (input.length < 4) {
    return 'Number is too small';
  }

  nums = input.split('').map(function (strNum) {
    return parseInt(strNum, 10);
  });
  lowest = consecutiveProduct(nums.slice(0, 4));

  for (i = 1; i < nums.length - 3; i++) {
    compare = consecutiveProduct(nums.slice(i, i + 4));
    lowest = Math.min(lowest, compare);
  }

  return lowest;
}


const lowestProductES6 = (input) => {
  if (input.length < 4) {
    return 'Number is too small';
  }

  const consecutiveProductES6 = (nums) => {
    return nums.reduce((product, num) => product *= num, 1);
  };

  let nums = input.split('').map(Number);
  let lowest = consecutiveProductES6(nums.slice(0, 4));

  for (let i = 1; i < nums.length - 3; i++) {
    let compare = consecutiveProduct(nums.slice(i, i + 4));
    lowest = Math.min(lowest, compare);
  }

  return lowest;
};


export { lowestProductES5 };
export { lowestProductES6 };
