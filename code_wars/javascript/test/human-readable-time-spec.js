/**
Description:

Write a function, which takes a non-negative integer (seconds) as input and
returns the time in a human-readable format (HH:MM:SS).

HH = hours, padded to 2 digits, range: 00 - 99
MM = minutes, padded to 2 digits, range: 00 - 59
SS = seconds, padded to 2 digits, range: 00 - 59

Assume the maximum time never exceeds 359999 (99:59:59)
*/

import chai from 'chai';
import {
  humanReadableTimeES5,
  humanReadableTimeES6
} from '../human-readable-time';

const expect = chai.expect;


const testHumanReadableTime = (humanReadableTime) => {
  describe(`${humanReadableTime.name}`, () => {
    it('takes an integer number and converts it to readable time', () => {
      expect(humanReadableTime(45296)).to.equal('12:34:56');
      expect(humanReadableTime(90)).to.equal('00:01:30');
    });

    it('converts seconds only values', () => {
      expect(humanReadableTime(5)).to.equal('00:00:05');
    });

    it('converts minutes only values', () => {
      expect(humanReadableTime(60)).to.equal('00:01:00');
    });

    it('converts hours only values', () => {
      expect(humanReadableTime(3600)).to.equal('01:00:00');
    });

    it('converts values up to a minute', () => {
      expect(humanReadableTime(59)).to.equal('00:00:59');
    });

    it('converts values up to an hour', () => {
      expect(humanReadableTime(3599)).to.equal('00:59:59');
    });

    it('converts values up to a day', () => {
      expect(humanReadableTime(86399)).to.equal('23:59:59');
    });

    it('doesn\'t convert values into days. Hours only', () => {
      expect(humanReadableTime(86400)).to.equal('24:00:00');
    });

    it('converts values up to 100 hours', () => {
      expect(humanReadableTime(359999)).to.equal('99:59:59');
    });

    it('converts a value of 0', () => {
      expect(humanReadableTime(0)).to.equal('00:00:00');
    });
  });
};


testHumanReadableTime(humanReadableTimeES5);
testHumanReadableTime(humanReadableTimeES6);
