#Access Specifiers
class A
	#private #public #protected
	def m1
		puts "Public Method1"
	end
	def m2
		puts "Public method2"
	end
	#public :m1,:m2

end
a1=A.new
a1.m1
a1.m2
