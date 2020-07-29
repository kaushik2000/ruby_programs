#Array and operations on array
a=[]
puts "Enter any five integers"
i=0
for i in 0...5 do 
	a[i]=gets.chomp.to_i
	end
puts "The sum of all integers is #{a.sum}"
puts "The maximum value of the array is #{a.max}"
puts "The minimum value of the array is #{a.min}"
puts "Displaying reverse of the array #{a.reverse}"
