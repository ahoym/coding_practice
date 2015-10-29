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


describe('humanReadableTime, ES5', function() {
  it('takes a seconds integer and converts it to readable time', function() {
    expect(humanReadableTimeES5(45296)).to.equal('12:34:56');
    expect(humanReadableTimeES5(90)).to.equal('00:01:30');
  });

  it('converts seconds only values', function() {
    expect(humanReadableTimeES5(5)).to.equal('00:00:05');
  });

  it('converts minutes only values', function() {
    expect(humanReadableTimeES5(60)).to.equal('00:01:00');
  });

  it('converts hours only values', function() {
    expect(humanReadableTimeES5(3600)).to.equal('01:00:00');
  });

  it('converts values up to a minute', function() {
    expect(humanReadableTimeES5(59)).to.equal('00:00:59');
  });

  it('converts values up to an hour', function() {
    expect(humanReadableTimeES5(3599)).to.equal('00:59:59');
  });

  it('converts values up to a day', function() {
    expect(humanReadableTimeES5(86399)).to.equal('23:59:59');
  });

  it('doesn\'t convert values into days. Hours only', function() {
    expect(humanReadableTimeES5(86400)).to.equal('24:00:00');
  });

  it('converts values up to 100 hours', function() {
    expect(humanReadableTimeES5(359999)).to.equal('99:59:59');
  });

  it('converts a value of 0', function() {
    expect(humanReadableTimeES5(0)).to.equal('00:00:00');
  });
});


describe('humanReadableTime, ES6', () => {
  it('takes an integer number and converts it to readable time', () => {
    expect(humanReadableTimeES6(45296)).to.equal('12:34:56');
    expect(humanReadableTimeES6(90)).to.equal('00:01:30');
  });

  it('converts seconds only values', () => {
    expect(humanReadableTimeES6(5)).to.equal('00:00:05');
  });

  it('converts minutes only values', () => {
    expect(humanReadableTimeES6(60)).to.equal('00:01:00');
  });

  it('converts hours only values', () => {
    expect(humanReadableTimeES6(3600)).to.equal('01:00:00');
  });

  it('converts values up to a minute', () => {
    expect(humanReadableTimeES6(59)).to.equal('00:00:59');
  });

  it('converts values up to an hour', () => {
    expect(humanReadableTimeES6(3599)).to.equal('00:59:59');
  });

  it('converts values up to a day', () => {
    expect(humanReadableTimeES6(86399)).to.equal('23:59:59');
  });

  it('doesn\'t convert values into days. Hours only', () => {
    expect(humanReadableTimeES6(86400)).to.equal('24:00:00');
  });

  it('converts values up to 100 hours', () => {
    expect(humanReadableTimeES6(359999)).to.equal('99:59:59');
  });

  it('converts a value of 0', () => {
    expect(humanReadableTimeES6(0)).to.equal('00:00:00');
  });
});
