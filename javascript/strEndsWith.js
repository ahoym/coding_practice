/* 
Complete the solution so that it returns true if the first argument(string) passed 
in ends with the 2nd argument (also a string).

Examples:

solution('abc', 'bc') // returns true
solution('abc', 'd') // returns false
*/

function strEndsWith(str, ending) {
	if (typeof str !== 'string' || typeof ending !== 'string') throw new Error("Not a string type");
	
	// can also use str.substr(start index, length) to replace relevantPart
	var relevantPart = str.slice(str.length - ending.length);
	return relevantPart === ending;
};

// "under the hood" solution
function strEndsWithII(str, ending) {
	var iStr = str.length
	var iEnding = ending.length
	
	if (iEnding > iStr) return false;
	
	while (iEnding > 0) {
		iEnding--;
		iStr--;
		
		if (str[iStr] !== ending[iEnding]) return false;
	}
	
	return true;
};
