describe('arraySearch', function() {
	it('should return true/false on whether a given nested array contains a target value', function() {
		expect(arraySearch([1, 2, 3, 4, 5], 1)).toEqual(true);
		expect(arraySearch([1, 2, 3, 4, 5], 6)).toEqual(false);
		expect(arraySearch(['a', 'b', 'c', 'd'], 'd')).toEqual(true);
		expect(arraySearch(['a', 'b', 'c', 'd'], 'e')).toEqual(false);
	});
	
	it('should also work with nested arrays', function() {
		expect(arraySearch([1, [2, [3, [4, [5]]]]], 5)).toEqual(true);
		expect(arraySearch([1, [2, [3, [4, [5]]]]], 6)).toEqual(false);
	});
	
	it('should handle different types of nesting', function() {
		expect(arraySearch([1, [2], [3], [4], [5]], 5)).toEqual(true);
		expect(arraySearch([1, [2], [3], [4], [5]], 6)).toEqual(false);
		expect(arraySearch([1, [2], [3], [4, 5, [6]]], 6)).toEqual(true);
		expect(arraySearch([1, [2], [3], [4, 5, [6]]], 7)).toEqual(false);
		expect(arraySearch([1, [2], [3, [4, [5]]], 8], 8)).toEqual(true);
		expect(arraySearch([1, [2], [3, [4, [5]]], 8], 9)).toEqual(false);		
	});
	
	it('should handle empty and simple lists', function() {
		expect(arraySearch([], 5)).toEqual(false);
		expect(arraySearch([5], 5)).toEqual(true);
		expect(arraySearch([1], 5)).toEqual(false);		
	});
	
	it('should throw an error if the given list is not an array', function() {
		expect(function() { arraySearch("lalalal", 40) }).toThrow(new Error("Given list is not an array"));
	});
});