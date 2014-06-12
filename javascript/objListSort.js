/* 
You'll be passed an array of objects - you must sort them in descending order based 
on the value of an arbitrarily specified property. For example, when sorted by a, this:

[
  {a: 1, b: 3},
  {a: 3, b: 2},
  {a: 2, b: 40},
  {a: 4, b: 12}
]

should return:

[
  {a: 4, b: 12},
  {a: 3, b: 2},
  {a: 2, b: 40},
  {a: 1, b: 3}
]

write a function sortList(sortBy, list) where sortBy is the key to be sorted by,
and list is the passed in data.
*/

function sortList(sortBy, list) {
	if (list.length === 0) throw new Error("The list is empty");
	
	return list.sort( function(first, second) {
		if (first[sortBy] === undefined || second[sortBy] === undefined) 
			throw new Error("The key given is not in this object");
		
		return second[sortBy] - first[sortBy];
	});
};