class LinkedListNode
    attr_accessor :value, :next_node
  
    def initialize(value, next_node=nil)
      @value = value
      @next_node = next_node
    end
  end

  def print_values(list_node)
    if list_node
      print "#{list_node.value} --> "
      print_values(list_node.next_node)
    else
      print "nil\n"
      return
    end
  end

  class Stack
    attr_reader :data

    def initialize
      @data = nil
    end

    def push(value)
      @data = LinkedListNode.new(value, @data)
    end

    def pop
      last = @data
      @data = @data.next_node
      last
  end

end

# def reverse_list(list)
#     nil if list.nil?
#     stack_list = Stack.new
#     while list
#         stack_list.push(list.value)
#         list = list.next_node
#     end
#     while stack_list
#       print "#{stack_list.pop.value} --> "
#     end
# end

# def reverse_list(list)
#   nil if list.nil?
#   stack_list = Stack.new
#   stack_list_length = 0
#   while list
#     stack_list_length += 1
#     stack_list.push(list.value)
#     list = list.next_node
#   end
#   reversed_list_length = 0
#   while reversed_list_length < stack_list_length
#     print "#{stack_list.pop.value} --> "
#     reversed_list_length += 1
#   end
# end

def reverse_list(node)
  stack_list = Stack.new
  node2 = node
  while node
    stack_list.push(node.value)
    node = node.next_node
  end
  while node2
    print "#{stack_list.pop.value} --> "
    node2 = node2.next_node
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
  
  print_values(node3)

  puts "-------"

  revlist = reverse_list(node3)

  print_values(revlist)