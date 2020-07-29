#Type-casting
puts "Enter any two integers"
a=gets.chomp
b=gets.chomp
puts "a+b" #Prints 'a+b' on the screen
puts "#{a+b}" #Prints 'a b' values in the screen as strings 
a=a.to_i
b=b.to_i
puts "#{a+b}" 
