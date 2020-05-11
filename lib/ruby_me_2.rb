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
end
