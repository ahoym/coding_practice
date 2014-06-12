describe("sortList", function() {
	it("should sort a list of objects based on a given object key", function() {
		expect(sortList("a", [
		  {a: 1, b: 3},
		  {a: 3, b: 2},
		  {a: 2, b: 40},
		  {a: 4, b: 12}
		])).toEqual([
		  {a: 4, b: 12},
		  {a: 3, b: 2},
		  {a: 2, b: 40},
		  {a: 1, b: 3}
		]);
	});
	
	it("should throw an error if the sortBy key doesn't exist in the object", function() {
		expect(function() { 
			sortList("c", [
			  {a: 1, b: 3},
			  {a: 3, b: 2},
			  {a: 2, b: 40},
			  {a: 4, b: 12}
			]);
		}).toThrow(new Error("The key given is not in this object"));
	});
	
	it("should throw an error if the list is empty", function() {
		expect(function() {
			sortList('a', []);
		}).toThrow(new Error("The list is empty"));
	});
});