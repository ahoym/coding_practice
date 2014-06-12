# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  raise TriangleError if [a,b,c].min <= 0
  x,y,z = [a,b,c].sort
  raise TriangleError if x + y <= z
  raise TriangleError if [a,b,c].sort[0] + [a,b,c].sort[1] <= [a,b,c].sort[2] 

  return :equilateral if [a,b,c].uniq.length == 1
  return :isosceles if [a,b,c].uniq.length == 2
  return :scalene if [a,b,c].uniq.length == 3

  # can condense the above 3 lines of code into
  # [:equilateral,:isoseles,:scalene][[a,b,c].uniq.size]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
