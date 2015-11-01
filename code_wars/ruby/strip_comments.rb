# Write a program that accepts a string, input, and an array, markers. At
#    every marker, delete the content until the end of its line. eg,
#    --result = solution("apples, pears # and bananas\ngrapes\nbananas !apples", ["#", "!"])
#    result should == "apples, pears\ngrapes\nbananas"

def solution(input, markers)
  markers.each do |m|
  	input = input.gsub(/ [#{m}].*$/,'')
  end

  input
end

# This method combines all markers into a class expression, eg [$!%]
def solution(input, markers)
  input.gsub(/\s+[#{markers.join}].*/, "")
end

# This method combines the markers into individual variable expressions,
#  eg, [$|!|%]
def solution(input, markers)
  comment_start = markers.map {|m| Regexp.escape(m)}.join("|")
  input.gsub(/\s*(#{comment_start}).*$/, '')
end