module ModuleName
  # Simple example of a ruby object class
  class Computer
    $manufacturer = "Mango Computer, Inc."
    @@files = {hello: "Hello, world!"}
    
    def initialize(username, password)
      @username = username
      @password = password
    end
    
    def current_user
      @username
    end
    
    def self.display_files
      @@files
    end
  end

  # Make a new Computer instance:
  hal = Computer.new("Dave", 12345)

  puts "Current user: #{hal.current_user}"
  # @username belongs to the hal instance.

  puts "Manufacturer: #{$manufacturer}"
  # $manufacturer is global! We can get it directly.

  puts "Files: #{Computer.display_files}"
  # @@files belongs to the Computer class.

  #######################################

  class Person
    # Set your class variable to 0 on line 3
    @@people_count = 0
    
    def initialize(name)
      @name = name
      # Increment your class variable on line 8
      @@people_count += 1
    end
    
    def self.number_of_instances
      # Return your class variable on line 13
      return @@people_count
    end
  end

  matz = Person.new("Yukihiro")
  dhh = Person.new("David")

  puts "Number of Person instances: #{Person.number_of_instances}"

  #######################################
  # Ruby class example displaying inheritance
  class ApplicationError
    def display_error
      puts "Error! Error!"
    end
  end

  class SuperBadError < ApplicationError
  end

  err = SuperBadError.new
  err.display_error

  #######################################
  # Ruby super keyword will inherit from base class methods needed
  # for base class or parent class
  class Creature
    def initialize(name)
      @name = name
    end
    
    def fight
      return "Punch to the chops!"
    end
  end
  
  class Dragon < Creature
    def fight
      puts "Instead of breathing fire..."
      super()
    end
  end

  #######################################
  # A fake VM project using just ruby
  class Machine
    @@users = {}
    
    def initialize(username, password)
      @username = username
      @password = password
      @@users[username] = password
      @files = {}
    end
    
    def create(filename)
      time = Time.now
      @files[filename] = time
      puts "#{filename} was created by #{@username} at #{time}."
    end
    
    def Machine.get_users
      @@users
    end
  end

  my_machine = Machine.new("eric", 01234)
  your_machine = Machine.new("you", 56789)

  my_machine.create("groceries.txt")
  your_machine.create("todo.txt")

  puts "Users: #{Machine.get_users}"

  ############################################
  # Modules and classes combined to be call a mixin
  # Modules usually on has methods in it
  module Action
    def jump
      @distance = rand(4) + 2
      puts "I jumped forward #{@distance} feet!"
    end
  end

  class Rabbit
    include Action
    attr_reader :name
    def initialize(name)
      @name = name
    end
  end

  class Cricket
    include Action
    attr_reader :name
    def initialize(name)
      @name = name
    end
  end

  peter = Rabbit.new("Peter")
  jiminy = Cricket.new("Jiminy")

  peter.jump
  jiminy.jump

  ############################################
  # The extend keyword mixes a module’s methods at the class level
  module ThePresent
    def now
      puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
    end
  end

  class TheHereAnd
    extend ThePresent
  end

  TheHereAnd.now


end