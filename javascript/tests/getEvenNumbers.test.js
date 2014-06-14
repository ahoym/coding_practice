describe('getEvenNumbers', function() {
	it('should return all even numbers in a given array', function() {
		expect(getEvenNumbers([1, 2, 3, 4, 5, 6])).toEqual([2, 4, 6]);
		expect(getEvenNumbers([2, 4, 6, 8])).toEqual([2, 4, 6, 8]);
	});
	
	it('should return an empty array if the given array is all odd numbers', function() {
		expect(getEvenNumbers([1, 3, 5, 7])).toEqual([]);
	});
	
	it('should return an empty array if given one', function() {
		expect(getEvenNumbers([])).toEqual([]);
	});
	
	it('should throw an error if the given value is not an array', function() {
		expect(function() { getEvenNumbers('lolololol') }).toThrow(new Error('Passed in value is not an array'));
	});
});