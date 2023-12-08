class Stack
  def initialize
    @stack = []
  end

  def push(element)
    @stack.push(element)
  end

  def pop
    @stack.pop
  end

  def peek
    @stack.last
  end

  def empty?
    @stack.empty?
  end

  def size
    @stack.size
  end

  def display
    puts "Stack: #{@stack.reverse}"
  end
end

stack = Stack.new

loop do
  puts "( 1 ) - Add element"
  puts "( 2 ) - Remove element"
  puts "( 3 ) - View top of stack"
  puts "( 4 ) - Check if the stack is empty"
  puts "( 5 ) - Get stack size"
  puts "( 6 ) - Print the stack"
  puts "( 7 ) - Exit"

  choice = gets.chomp.to_i

  case choice
  when 1
    print "Enter an item: "
    element = gets.chomp
    stack.push(element)
    puts "Element #{element} added to the stack"
  when 2
    if stack.empty?
      puts "The stack is empty"
    else
      puts "Item removed: #{stack.pop}"
    end
  when 3
    if stack.empty?
      puts "The stack is empty"
    else
      puts "Top of the stack: #{stack.peek}"
      stack.display
    end
  when 4
    puts "The stack is empty: #{stack.empty?}"
  when 5
    puts "Stack size: #{stack.size}"
  when 6
    stack.display
  when 7
    break
  else
    puts "Incorrect choice. Try again."
  end

  puts "---------------------"
end
