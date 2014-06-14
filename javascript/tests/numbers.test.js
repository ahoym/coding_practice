describe("numbers", function() {
	it("should return true if all arguments passed in are number type", function() {
		expect(numbers(1, 2, 3, 4, 5, 6, 7)).toEqual(true);
		expect(numbers(-1, -2, -3, -4, -5, -6, -7)).toEqual(true);
	});
	
	it("should return false if any of the numbers are not a number type", function() {
		expect(numbers(1, 2, 3, "lol")).toEqual(false);
		expect(numbers('a', 'b', 'c')).toEqual(false);
	});
});