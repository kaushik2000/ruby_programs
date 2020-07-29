#Function-3
def array(n,a)
	puts "Enter the array elements:"
	s=0
	for i in 0...n do
		a[i]=gets.chomp.to_i
		s+=a[i]
	end
	puts "Displaying the array:",a,"Sum of Array elements:"+ s.to_s
end
puts "Enter the array size:"
n=gets.chomp.to_i
a=[]
array(n,a)
