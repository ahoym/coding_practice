/**
 * Given two sorted arrays, merge the two into a new sorted array
 * containing all elements
 * @param {array} First sorted array
 * @param {array} Second sorted array
 * @return combined array with all elements, sorted.
 */
var arrayMerge = function (arr1, arr2) {
  var result = [];
  var i = 0;
  var j = 0;
  var k = 0;

  while (arr1.length > i && arr2.length > j) {
    result[k++] = arr1[i] < arr2[j] ? arr1[i++] : arr2[j++];
  }

  while (arr1.length > i) {
    result[k++] = arr1[i++];
  }

  while (arr2.length > j) {
    result[k++] = arr2[j++];
  }

  return result;
};
