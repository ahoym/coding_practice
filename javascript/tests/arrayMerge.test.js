describe('arrayMerge', function () {
  it('should merge two sorted arrays into one sorted one', function () {
    var array1 = [1, 3, 5];
    var array2 = [2, 4, 6];
    var expected = [1, 2, 3, 4, 5, 6];;

    expect(arrayMerge(array1, array2)).toEqual(expected);
  });

  it('should handle arrays of different ranges', function () {
    var array1 = [1, 2, 3];
    var array2 = [40, 50, 60];
    var expected = [1, 2, 3, 40, 50, 60];
    
    expect(arrayMerge(array1, array2)).toEqual(expected);
  });

  it('should handle different length arrays', function () {
    var array1 = [10, 20, 30];
    var array2 = [10, 10, 30, 40, 50];
    var expected = [10, 10, 10, 20, 30, 30, 40, 50];

    expect(arrayMerge(array1, array2)).toEqual(expected);
  });

  it('should merge arrays even if one array is empty', function () {
    var array1 = [];
    var array2 = [1, 2, 3, 4, 5, 6, 7];
    var expected = [1, 2, 3, 4, 5, 6, 7];

    expect(arrayMerge(array1, array2)).toEqual(expected);
  });

  it('handles empty arrays', function () {
    expect(arrayMerge([], [])).toEqual([]);
  });
});
