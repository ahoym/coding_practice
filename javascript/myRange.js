/* 
Implement your own range([start], stop, [step]) function.
*/

function range(start, end, step) {  
  var result = [],
      a = arguments.length === 1 ? 0 : start,
      b = arguments.length === 1 ? start : end,
      c = step !== undefined ? step : 1;
  if( b < a ) return result;
  
  for (var i = a; (step == 0 ? result.length + a : i) < b; i = i + c) {
    result.push(i);
  }
  return result;
}