class RubyTenth
  print "Thtring, pleathe!: "
  user_input = gets.chomp
  user_input.downcase!

  if user_input.include? "s"
    user_input.gsub!(/s/, "th")
    puts "Adios, #{user_input}! "
  else
    print "there is no 's' in the string"  
  end
end