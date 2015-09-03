describe('subsets', function () {
  it('takes in an array and returns all of its subsets', function () {
    var input = [1, 2, 3];
    var expected = [
      [],
      [1], [1, 2], [1, 2, 3], [1, 3],
      [2], [2, 3],
      [3]
    ].sort();

    expect(subsets(input).sort()).toEqual(expected);
  });

  it('takes in an array and returns all of its subsets', function () {
    var input = [1, 2, 3, 4, 5];
    var expected = [
      [], [1], [2], [3], [4], [5],
      [1, 2], [1, 3], [1, 4], [1, 5],
      [1, 2, 3], [1, 2, 4], [1, 2, 5], [1, 3, 4], [1, 3, 5], [1, 4, 5],
      [1, 2, 3, 4], [1, 2, 3, 5], [1, 2, 4, 5], [1, 3, 4, 5],
      [1, 2, 3, 4, 5],
      [2, 3], [2, 4], [2, 5],
      [2, 3, 4], [2, 3, 5], [2, 4, 5],
      [2, 3, 4, 5],
      [3, 4], [3, 5], [3, 4, 5],
      [4, 5]
    ].sort();

    expect(subsets(input).sort()).toEqual(expected);
  });

  it('handles empty inputs', function () {
    expect(subsets([])).toEqual([[]]);
  });
});
