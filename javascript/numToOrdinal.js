/* 
Write a function that will add a number's correct ordinal indicator suffix.
eg

numberToOrdinal(1) => '1st'
numberToOrdinal(2) => '2nd'
numberToOrdinal(3) => '3rd'
numberToOrdinal(4) => '4th'
*/

function numberToOrdinal(n) {
  if (n === 0) return '0';
  var num = (n).toString();
  
  if (n % 100 >= 10 && n % 100 <= 20) {
    return num + "th";
  }
  switch (num.slice(-1)) {
  case '1': return num + 'st';
  case '2': return num + 'nd';
  case '3': return num + 'rd';
  default: return num + 'th';
  }
}

// using the observation that only 1, 2, 3 really matter
function numberToOrdinalII(n) { 
  var e = ['th','st','nd','rd','th'];
  return n ? n + e[n%100>10 && n%100<20 ? 0 : Math.min(n%10 ,4)] : "0"
}