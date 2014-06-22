describe('range', function() {
	it('should return an array of numbers within a given range', function() {
		expect(range(1, 11, 1)).toEqual([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
		expect(range(0, 30, 5)).toEqual([0, 5, 10, 15, 20, 25]);
	});
	
	it('should default the step to 1 if not given', function() {
		expect(range(1, 11)).toEqual([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
	});
	
	it('should work if only a stop is given', function() {
		expect(range(10)).toEqual([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]);
	});
	
	it('should handle cases when the stop is 0', function() {
		expect(range(0)).toEqual([]);
	});
	
	it('should return an empty array if the stop is larger than the start', function() {
		expect(range(10, 0)).toEqual([]);
	});
	
	it('should return an array with starts * (stop - start) elements', function() {
		expect(range(1, 4, 0)).toEqual([1, 1, 1]);
	});
});