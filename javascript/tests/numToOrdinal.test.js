describe('numberToOrdinal', function() {
	it("should add a number's correct ordinal indicator suffix", function() {
		expect(numberToOrdinal(1)).toEqual('1st');
		expect(numberToOrdinal(2)).toEqual('2nd');
		expect(numberToOrdinal(3)).toEqual('3rd');
		expect(numberToOrdinal(4)).toEqual('4th');
		expect(numberToOrdinal(20)).toEqual('20th');
		expect(numberToOrdinal(35)).toEqual('35th');
		expect(numberToOrdinal(46)).toEqual('46th');
		expect(numberToOrdinal(57)).toEqual('57th');
		expect(numberToOrdinal(68)).toEqual('68th');
		expect(numberToOrdinal(79)).toEqual('79th');										
	});
	
	it('should return "0" if the given number is 0', function() {
		expect(numberToOrdinal(0)).toEqual('0');
	});
	
	it('should handle nubmers in the teens', function() {
		expect(numberToOrdinal(10)).toEqual('10th');
		expect(numberToOrdinal(11)).toEqual('11th');
		expect(numberToOrdinal(12)).toEqual('12th');
		expect(numberToOrdinal(13)).toEqual('13th');
		expect(numberToOrdinal(14)).toEqual('14th');
		expect(numberToOrdinal(15)).toEqual('15th');
		expect(numberToOrdinal(16)).toEqual('16th');
		expect(numberToOrdinal(17)).toEqual('17th');
		expect(numberToOrdinal(18)).toEqual('18th');
		expect(numberToOrdinal(19)).toEqual('19th');
	});
	
	it('should handle ALL teens', function() {
		expect(numberToOrdinal(111)).toEqual('111th');
		expect(numberToOrdinal(212)).toEqual('212th');
	});
});