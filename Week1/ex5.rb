#Function to get user details
def myname
	puts "Kaushik.l"
end
def myage
	puts "18"
end
begin
	puts "Enter the detail to be printed: "+"Name "+"Age " 
	a=gets.chomp
	if(a=="name"||a=="Name")
		myname
	elsif(a=="age"||a=="Age")
		myage
	else 
		puts "Not a valid detail."
	end
end while(a=="name"||a=="Name"||a=="Age"||a=="age")
