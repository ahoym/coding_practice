/* 
Write a function named "locate" that gets an array and value and returns true 
if specified value exist in a multidimentional array.

Example:

arraySearch(['a','b',['c','d',['e']]],'e'); // should return true
arraySearch(['a','b',['c','d',['e']]],'a'); // should return true
arraySearch(['a','b',['c','d',['e']]],'f'); // should return false
*/

function arraySearch(arr, target) {
	if (!Array.isArray(arr)) throw new Error("Given list is not an array");
  var contains = false;
  
  for (var i = 0; i < arr.length; i++) {
    if (arr[i] === target) {
      return true;
    } else if (arr[i] instanceof Array) {
      contains = locate(arr[i], target);
			
			if (contains) return contains;
    }
  }
  
  return contains;
};


// using .some(), ternary, and .isArray()
var locate = function(arr, v) {
  return arr.some(function(e) { return Array.isArray(e) ? locate(e, v) : e === v; });
}