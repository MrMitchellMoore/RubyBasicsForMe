module RubyBasicsPart1
  #   This is the ruby basics
  #   This is so cool

  class RubyMe
    print "I just printed "
    puts "We are here"

    puts 1 + 3
    # Addition: output 4

    puts 1 - 2
    # Subtraction: output -1

    puts 9 / 3
    # Division: output 3

    puts 2 * 3
    # Multiplication: output 6

    puts 2**3
    # Exponentiation: output 8

    puts 16 % 9
    # Modulo: output 7

    var = "codecademy"

    # Method to get the length of a string
    puts var.length # 10

    # Method to get the string reversed
    puts var.reverse # ymedacedoc

    # Method to conver all letters to uppercase
    puts var.upcase # CODECADEMY

    # String 1
    s1 = 'I am a single string!'

    # String 2
    s2 = "I am a double string!"
    puts "The first string is #{s1} and the second string is #{s2}"

    puts "codecademy".upcase
    # CODECADEMY

    puts "Codecademy".downcase
    # codecademy
  end

  class RubyMePart2
    # If Else statements
    print "enter a number: "
    num = gets.chomp
    num =  num.to_i

    if num == 5
      puts "number is 5"
    elsif num == 10
      puts "number is 10"
    elsif num == 11
      puts "number is 11"
    else
      puts "number is something other than 5, 10, or 11"
    end

    # Operators
    grade1 = 50
    grade2 = 30
    grade3 = 80

    if grade1 > grade2 || grade1 > grade3
      puts "Grade 1 is not the lowest score!"
    end

    score1 = 20
    score2 = 50
    score3 = 10

    if score1 > score2 && score1 > score3
      puts "Score 1 is the greatest in value."
    else
      puts "Score 1 is not the greatest in value."
    end
  end

  class RubyMePart3
    # Looping

    # Unless
    # This construct requires a "number" variable to be less
    # than 10 in order to execute:
    print "Enter a number "
    number = gets.to_i
    puts "number is less than 10." unless number > 10

    # In this example, the next keyword along with a shorthand if statement is used to
    # skip over the even numbers in the sequence.
    (1..10).each do |i|
      next if i.even?

      puts i
    end

    5.times { puts "Codecademy" }

    # Hashes and Arrays
    profile = {
      "name" => "Magnus",
      "profession" => "chess player",
      "ranking" => 1,
      "grandmaster?" => true
    }
    puts profile["name"] # => Magnus

    numbers = [1, 2, 3, 4, 5]
    # An array of Integers

    words = %w[See Spot run]
    # An array of Strings

    mixed = ["hello", 5, true, 3.0]
    # An array with a String, Integer, Boolean, and Float

    empty = []
    # An empty array

    # Creating a hash through literal notation:
    lunch = {
      "protein" => "chicken",
      "greens" => "lettuce",
      "organic?" => true
    }

    # Creating a hash through Hash.new
    lunch = {}
    puts lunch # => {}

    # Bracket notation applies to any hash, regardless of how it was initialized
    teammates = {}
    teammates["forward"] = "Messi"

    salary = {
      "starting" => 40_000
    }
    salary["mid-level"] = 60_000

    multi_array = [[0, 1, 2, 3], [4.5, true, "hi"]]
    # Accessing the array at index 1
    puts multi_array[1] # => [4.5, true, "hi"]
    # Accessing the element at index 0 within the array at index 1
    puts multi_array[1][0] # => 4.5

    example = ["Car", "Boar", 45, 9.9, true]
    # For an array named `example`, you can retrieve an item of a particular index by referencing its index.
    puts example[2] # => 45
    puts example[0] # => Car

    # In this example, the each method iterates over every color in the colors array and prints it to the console.
    colors = %w[red blue green yellow]
    colors.each { |color| puts color }
    # Output
    # red
    # blue
    # green
    # yellow
    # When iterating over hashes, two placeholder variables are needed to represent each key/value pair.
    polygons = {
      "pentagon" => 5,
      "hexagon" => 6,
      "nonagon" => 9
    }

    polygons.each do |shape, sides|
      puts "A #{shape} has #{sides} sides."
    end
    # Output
    # A pentagon has 5 sides.
    # A hexagon has 6 sides.
    # A nonagon has 9 sides.
  end
end