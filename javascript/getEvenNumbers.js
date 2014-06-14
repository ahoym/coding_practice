/* 
Write a function that returns all even numbers of a passed in array.
*/

function getEvenNumbers(numbersArray){
	if (!(numbersArray instanceof Array)) throw new Error("Passed in value is not an array");
	
  return numbersArray.filter( function(n) {
    return n % 2 === 0;
  });
};