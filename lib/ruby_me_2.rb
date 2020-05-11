# frozen_string_literal: true

module RubyBasics2
  class RubyMe2
    # Blocks and Sorting

    puts 'Keanu' <=> 'Adrianna' # The first letters of each word are compared in ASCII order and since "K" comes after "A", 1 is printed.

    puts 1 <=> 2 # -1

    puts 3 <=> 3 # 0

    # <=> can also be used inside of a block and to sort values in descending order:
    my_array = [3, 0, 8, 7, 1, 6, 5, 9, 4]
    my_array.sort! { |first_num, second_num| second_num <=> first_num }
    print my_array
    # Output => [9, 8, 7, 6, 5, 4, 3, 1, 0]

    # The * preceding the parameter "clubs" allows for multiple
    # arguments to be passed into the method when you actually call
    # it.
    def extra_curriculars(*clubs)
      clubs.each { |club| puts "After school, I'm involved with #{club}" }
    end

    extra_curriculars('chess club', 'gymnastics', 'anime club', 'library services')

    # Output
    # After school, I'm involved with chess club
    # After school, I'm involved with gymnastics
    # After school, I'm involved with anime club
    # After school, I'm involved with library services

    # The block, {|i| puts i}, is passed the current array item
    # each time it is evaluated. This block prints the item.
    [1, 2, 3, 4, 5].each { |i| puts i }

    # In this example, the generous_tip method is returning the
    # product of bill and 0.25.
    # In order to see that value, a "puts" or "print" can be added
    # before the method call.
    def generous_tip(bill)
      bill * 0.25
    end

    generous_tip(100) # 25

    my_array = [3, 4, 8, 7, 1, 6, 5, 9, 2]
    my_array.sort!
    # Attaching an ! to the end of .sort or any other Ruby method
    # modifies the original array.
    print my_array
    # => [1, 2, 3, 4, 5, 6, 7, 8, 9]
    # If you didn't use !, print my_array returns the original array.

    # num is the parameter
    def square(num) 
      puts num**2
    end
    # 5 is the argument
    square(5) 
    # Output => 25

    # Printing out even numbers
    my_array_me = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    my_array_me.each { |r| puts r if r.even? }

    # .upto for looping from L to P
    "L".upto("P") { |letter| puts letter.to_s }

    # Instead of using push we using << to concat
    alphabet = ["a", "b", "c"]
    alphabet << "d" # Update me!
    puts alphabet

    caption = "A giraffe surrounded by "
    caption << "weezards!" # Me, too!
    puts caption
    
  end
  class RubyMe2p2

    # Using the collect method which doesn't mutate the array
    # Using collect! will mutate it
    fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

    doubled_fibs = fibs.collect { |num| num * 2}
    puts doubled_fibs

    # Using Yield will sub in a block at a later time
    def block_test
      puts "We're in the method!"
      puts "Yielding to the block..."
      yield
      puts "We're back in the method!"
    end

    block_test { puts ">>> We're in the block!" }

    # Using Procs to make our code DRY
    multiples_of_3 = Proc.new do |n|
      n % 3 == 0
    end

    print (1..100).to_a.select(&multiples_of_3)

    # Proc.new is how we init a proc and pass a block
    # Collect! and Map! are the same with the & symbol just used to convert into block
    cube = Proc.new { |x| x ** 3 }
    [1, 2, 3].collect!(&cube)
    # ==> [1, 8, 27]
    [4, 5, 6].map!(&cube)
    # ==> [64, 125, 216]
    # You can convert strings to integer or vice verser using &:to_s or &:to_i
    strings = ["1", "2", "3"]
    nums = strings.map(&:to_i)
    # ==> [1, 2, 3]

    # Example of a simple lambda
    def lambda_demo(a_lambda)
      puts "I'm the method!"
      a_lambda.call
    end

    lambda_demo(lambda { puts "I'm the lambda!" })

    # lambda to check if array contains symbols and if it does puts it out
    my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]
    symbol_filter = lambda { |s| s.is_a? Symbol }
    symbols = my_array.select(&symbol_filter)
    puts symbols

  end
end
