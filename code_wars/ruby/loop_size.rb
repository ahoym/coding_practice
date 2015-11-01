def create_chain_for_test(tail_size, loop_size)
  prev_node = start = Node.new
  start.next = start
  return start if loop_size == 1
  (1..tail_size).each do |i|
    prev_node.next = Node.new
    prev_node = prev_node.next
  end
  end_loop = prev_node
  (1...loop_size).each do |i|
    prev_node.next = Node.new
    prev_node = prev_node.next
  end
  prev_node.next = end_loop
  start
end

class Node
  attr_accessor :next 
  attr_accessor :i 
end

def loop_size(node)
  nodes = []
  
  item = node
  i = 0
  
  while true
    n = item.next
    item.i = i
    
    if n.i
      return item.i - n.i + 1
    end
    
    item = n
    i += 1
  end
end