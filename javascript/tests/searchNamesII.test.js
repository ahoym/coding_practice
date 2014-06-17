describe('serachNamesII', function() {
	it('should return the associated email of the invalid username(s)', function() {
		expect(searchNamesII(["foo","foo@foo.com","bar.","bar@bar.com"])).toEqual(["bar@bar.com"]);
		expect(searchNamesII(["foo","foo@foo.com","bar.","bar@bar.com","foobar","hello@dot.com",".barfoo","barfoo@t.com"])).toEqual(
						["bar@bar.com","barfoo@t.com"]);
	});
	
	it('should handle usernames with periods mixed in', function() {
		expect(searchNamesII(["f.o.o","foo@foo.com","bar.","bar@bar.com",".b.a.r","foobar@fb.com",".b.a.r.f.o.o.t.","bar_foo@fb.com"])).toEqual(
						 ["bar@bar.com","foobar@fb.com","bar_foo@fb.com"]);
	});
	
	it('should handle empty arrays', function() {
		expect(searchNamesII([])).toEqual([]);
	});
	
	it('should throw an error if the input value is not an array', function() {
		expect(function() { searchNamesII("lol") }).toThrow('Input value is not an array');
	});
});