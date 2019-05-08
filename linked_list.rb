require_relative 'stack'

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
  end
end

def reverse_list(node)
  stack_list = Stack.new
  node2 = node
  while node
    stack_list.push(node.value)
    node = node.next_node
  end
  stack_list.data
end

node1 = Node.new(37)
node2 = Node.new(99, node1)
node3 = Node.new(12, node2)

print_values(node3)

puts '-------'

revlist = reverse_list(node3)

print_values(revlist)
