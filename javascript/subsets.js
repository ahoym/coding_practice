/*
 * Write a function, subsets, which takes an array and returns all its subsets
 */

'use strict';

var subsets = function (array) {
  var results = [[]];

  array.forEach(function(element) {
    results.forEach(function(subset) {
      results.push(subset.concat(element));
    });
  });

  return results;
};
