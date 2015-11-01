# Write a program that will produce an array that is snail sorted.

def snail(array)
  snailed = []
  
  until array.empty?
    snailed << array[0].shift until array[0].empty?
    array.delete_if {|e| e.empty?}
    array.each { |e| snailed << e.pop }
    next if array[-1].nil?
    snailed << array[-1].pop until array[-1].empty?
    array.delete_if {|e| e.empty? }
    array.reverse.each {|e| snailed << e.shift }
  end
  snailed
end

def snail(array)
  array.empty? ? [] : array.shift + snail(array.transpose.reverse)
end

def snail(array)
  return nil if array.empty?
  # right       , down                   , left                          , up                               , keep going
  [array.shift(), array.map{|x| x.pop(1)}, array.pop(1).flatten.reverse(), array.map{|x| x.shift(1)}.reverse, snail(array)].flatten.compact
end