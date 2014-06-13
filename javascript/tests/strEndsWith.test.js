describe('strEndsWith', function() {
	it('should determine if a given str ends with a given ending', function() {
		expect(strEndsWith('samurai', 'ai')).toEqual(true);
		expect(strEndsWith('sumo', 'omo')).toEqual(false);
		expect(strEndsWith('ninja', 'ja')).toEqual(true);
	});
	
	it('should handle cases where the ending is longer than the str', function() {
		expect(strEndsWith('ails', 'fails')).toEqual(false);
		expect(strEndsWith('abc', 'abcd')).toEqual(false);
	});
	
	it('should handle cases where the ending is only a single letter', function() {
		expect(strEndsWith('sensei', 'i')).toEqual(true);
	});
	
	it('should return false even if the ending is very close to the str ending', function() { 
		expect(strEndsWith('samurai', 'ra')).toEqual(false);
		expect(strEndsWith('abcabc', 'bc')).toEqual(true);
	});
	
	it('should handle cases where the str and the ending are exactly the same', function() {
		expect(strEndsWith('abc', 'abc')).toEqual(true);
	});
	
	it('should throw an error if the str or ending are not strings', function() {
		expect(function() { strEndsWith(123, 'abc') }).toThrow(new Error("Not a string type"));
		expect(function() { strEndsWith('abc', 123) }).toThrow(new Error("Not a string type"));
		expect(function() { strEndsWith(123, 456) }).toThrow(new Error("Not a string type"));
	});
});