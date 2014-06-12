describe("searchNames", function() {
	it("should return pairs of info where the username ends with an underscore", function() {
		expect(searchNames([ [ "foo", "foo@foo.com" ], [ "bar_", "bar@bar.com" ] ])).toEqual([[ "bar_", "bar@bar.com" ] ]);
		expect(searchNames([ 
			[ "foo", "foo@foo.com" ], 
			[ "bar_", "bar@bar.com" ],
			[ "test", "test@test.com"],
			[ "blahblah_", "blah@blah.com"] ])).toEqual([
					[ "bar_", "bar@bar.com" ],
					[ "blahblah_", "blah@blah.com"] ]);
	});
	
	it("should handle empty arrays", function() {
		expect(searchNames([])).toEqual([]);
		expect(searchNames([[]])).toEqual([]);
	});
	
	it("should handle data that is not paired", function() {
		expect(searchNames([ ["test"] ])).toEqual([]);
		expect(searchNames([ ["test_" ]])).toEqual([]);
	});
	
	it("should handle cases where paired data isn't conventional ([string, string])", function() {
		expect(searchNames([ [123, "lala@test" ]])).toEqual([]);
		expect(searchNames([ [123.0, "poop@lol.com" ]])).toEqual([]);
	});
});