#Inheritance 
class A
	def m1
		puts "Parent class"
	end
end
class B<A
	def m2
		puts "Child class"
	end
end

b1=A.new
puts b1.m1

b2=B.new
puts b2.m1
puts b2.m2
