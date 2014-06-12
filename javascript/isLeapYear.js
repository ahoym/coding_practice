// Write a function isLeapYear(year) which accepts a valid integer number year and
// 	determines if it is a leap year. Some facts to note:
//  + Years divisible by 4 are leap years.
//  + Years divisible by 100 are NOT leap years.
//  + Years divisible by 400 ARE leap years.

function isLeapYear(year) {
	// year % 1 !== 0 will prevent floats, except for cases of 2020.0
	if (typeof year !== 'number' || year % 1 !== 0) {
		throw new Error("Not a valid input");
	}
	
	if (year % 4 === 0 && year % 100 !== 0) {
		return true;
	} else if (year % 400 === 0) {
		return true;
	} else {
		return false;
	}
};