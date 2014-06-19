describe('findNumber', function() {
	it('should find the missing number in the range', function() {
		expect(findNumber([1, 3])).toEqual(2);
		expect(findNumber([1,3,4,5,6,7,8])).toEqual(2);
		expect(findNumber([1,2,3,5])).toEqual(4);
	});
	
	it('should handle edges', function() {
		expect(findNumber([1, 2])).toEqual(3);		
		expect(findNumber([2,3,4])).toEqual(1);		
	});
	
	it('should handle unsorted arrays', function() {
		expect(findNumber([7,8,1,2,4,5,6])).toEqual(3);		
		expect(findNumber( [13,11,10,3,2,1,4,5,6,9,7,8] )).toEqual(12);
	});
});