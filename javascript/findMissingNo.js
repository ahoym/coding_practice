/* 
Given an array from 1 to n, find the missing number within the sequence, when
it is known the array length should be the given + 1.

eg,
findNumber([1, 3]) => 2
findNumber([1, 2, 4, 5]) => 3
findNumber([1, 2]) => 3
*/

function findNumber(array) {
  for (var i = 1; i < array.length + 2; i++) {
    if (array.indexOf(i) === -1) return i;
  }
  return null;
}

// function findNumber(array) {
//   var missing = 0;
//   array = array.sort(function(a,b) { return a - b });
//
//   for (var i = 0; i < array.length + 1; i++) {
//     if (array[i] === i + 1) {
//       continue
//     } else {
//       missing = i + 1;
//       break;
//     }
//   }
//
//   return missing;
// }