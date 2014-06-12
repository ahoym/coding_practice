// Write a function isLeapYear(year) which accepts a valid integer number year and
// 	determines if it is a leap year. Some facts to note:
//  + Years divisible by 4 are leap years.
//  + Years divisible by 100 are NOT leap years.
//  + Years divisible by 400 ARE leap years.

function isLeapYear(year) {
	if (year % 4 === 0 && year % 100 !== 0) {
		return true;
	} else if (year % 400 === 0) {
		return true;
	} else {
		return false;
	}
};