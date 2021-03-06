describe('searchNamesII', function () {
	it('should return the email of the invalid username(s)', function () {
		var input = [
			"foo",
			"foo@foo.com",
			"bar.",
			"bar@bar.com"
		];
		var input2 = [
			"foo",
			"foo@foo.com",
			"bar.",
			"bar@bar.com",
			"foobar",
			"hello@dot.com",
			".barfoo",
			"barfoo@t.com"
		];

		expect(searchNamesII(input)).toEqual(["bar@bar.com"]);
		expect(searchNamesII(input2)).toEqual(["bar@bar.com", "barfoo@t.com"]);
	});

	it('should handle usernames with periods mixed in', function () {
		var input = [
			"f.o.o",
			"foo@foo.com",
			"bar.",
			"bar@bar.com",
			".b.a.r",
			"foobar@fb.com",
			".b.a.r.f.o.o.t.",
			"bar_foo@fb.com"
		];
		var expected = [
			"bar@bar.com",
			"foobar@fb.com",
			"bar_foo@fb.com"
		];

		expect(searchNamesII(input)).toEqual(expected);
	});

	it('should handle empty arrays', function () {
		expect(searchNamesII([])).toEqual([]);
	});

	it('should throw an error if the input value is not an array', function () {
		var expectedError = new Error('Input value is not an array');
		expect(function () { searchNamesII("lol") }).toThrow(expectedError);
	});
});
