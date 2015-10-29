/**
Comparing objects is not an easy task in JavaScript. The comparison operator
only returns true if both variables point to the same object, that's why two
objects with the same properties and values are different for JavaScript,
like this:

var a = { name: 'Joe' };
var b = { name: 'Joe' };
a == b;  //-> false

Sometimes it's really useful to detect when two objects have the same values.

Your task is to develop the deepCompare function to test if two objects have
the same properties and values. Remember that an object can contain other
objects. The function should also be able to correctly compare simple values,
like strings and numbers (without using type cohersion, please).

To make things simpler, it will only have to deal with simple values and
objects and arrays containing strings, booleans and numbers, without taking
into account regular expressiones, dates and functions.
*/

function deepCompareES5(obj1, obj2) {
  // Handle comparisons of non-objects
  if (obj1 === obj2) {
    return true;
  }

  // Handle case where one argument is not an object
  if (typeof obj1 !== 'object' || typeof obj2 !== 'object') {
    return false;
  }

  // Objects do not have the same number of keys
  if (Object.keys(obj1).length !== Object.keys(obj2).length) {
    return false;
  }

  return Object.keys(obj1).every(function(key) {
    return deepCompareES5(obj1[key], obj2[key]);
  });
}


const deepCompareES6 = (obj1, obj2) => {
  if (obj1 === obj2) {
    return true;
  }

	if (typeof obj1 !== 'object' || typeof obj2 !== 'object') {
    return false;
  }

  if (Object.keys(obj1).length !== Object.keys(obj2).length) {
    return false;
  }

  return Object.keys(obj1).every(key => deepCompareES6(obj1[key], obj2[key]));
};


export { deepCompareES5, deepCompareES6 };
