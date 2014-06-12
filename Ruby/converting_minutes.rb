=begin
Have the function CountingMinutesI(str) take the str parameter being passed
 which will be two times (each properly formatted with a colon and am or pm)
  separated by a hyphen and return the total number of minutes between the 
  two times. The time will be in a 12 hour clock format. For example: if 
  str is 9:00am-10:00am then the output should be 60. 
  If str is 1:00pm-11:00am the output should be 1320  
=end
  

def convert_time(str)
  suffix = str.slice!(-2,2)
  hours, minutes = str.split(/:/)
  total = 0
  
  if suffix == 'pm'
    total += (12*60)
  end
  
  total + (hours.to_i*60) + minutes.to_i
end

def converting_minutes(str = nil)
  raise StandardError if str.nil?
  raise ArgumentError if str[/\d?\d\:\d\d(am|pm)\-\d?\d\:\d\d(am|pm)/i].nil?
  
  times = str.split(/-/)
  
  minutes = convert_time(times[1]) - convert_time(times[0]) % 1440
  
  return minutes + (minutes < 0 ? 1440 : 0)
end