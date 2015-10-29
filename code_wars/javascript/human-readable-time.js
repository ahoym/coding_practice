/**
Description:

Write a function, which takes a non-negative integer (seconds) as input and
returns the time in a human-readable format (HH:MM:SS).

HH = hours, padded to 2 digits, range: 00 - 99
MM = minutes, padded to 2 digits, range: 00 - 59
SS = seconds, padded to 2 digits, range: 00 - 59

Assume the maximum time never exceeds 359999 (99:59:59)
*/

'use strict';


function humanReadableTimeES5(seconds) {
  return [
    seconds / 3600,
    seconds % 3600 / 60,
    seconds % 60
  ]
  .map(function(time) {
    var readable = parseInt(time).toString();
    return readable.length === 1 ? '0' + readable : readable;
  })
  .join(':');
}


const humanReadableTimeES6 = (seconds) => {
  let padTime = (time) => time < 10 ? '0' + time : time;
  let hours = padTime(parseInt(seconds / 3600));
  let minutes = padTime(parseInt(seconds % 3600 / 60));
  let secs = padTime(seconds % 60);

  return `${hours}:${minutes}:${secs}`;
};


export { humanReadableTimeES5, humanReadableTimeES6 };
