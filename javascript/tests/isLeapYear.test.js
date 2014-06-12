describe("isLeapYear", function() {
	it("should correctly return true of false if a given year is a leap year", function() {
		// divisible by 4 check
		expect(isLeapYear(2020)).toEqual(true);
		expect(isLeapYear(2021)).toEqual(false);
		
		// divisible by 100 check
		expect(isLeapYear(1900)).toEqual(false);
		
		// divisible by 400 check
		expect(isLeapYear(2000)).toEqual(true);
	});
	
	it("should throw an error if an invalid input is given", function() {
		expect(function() { 
			isLeapYear('asdf')
		}).toThrow(new Error("Not a valid input"));
		
		expect(function() {
			isLeapYear(2020.1)
		}).toThrow(new Error("Not a valid input"));
	});
});