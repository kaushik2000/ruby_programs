#Creating employee class
class Employee
	attr_accessor :name, :no

	def initialize name,no #Super class constructor
		@name, @no=name, no
	end
end

class Salary < Employee
	attr_accessor :basic, :pf, :da

	def initialize name=nil,no=nil,basic=nil,pf=nil,da=nil #sub-class constructor
		super name,no #Sending arguments to super class constructor
		@basic, @pf, @da=basic, pf, da
	end

	def to_s #Overwriting to_s to display details of employee
		puts "\nEmployee Details:","Name: #{self.name}","Number: #{self.no}","Basic pay: #{self.basic}","PF: #{self.pf}","DA: #{self.da}","Netpay: #{@basic + @da - @pf}"
	end
end

puts "Enter employee details: (Name, No., BasicPay, PF & DA)"
emp1=Salary.new(gets.chomp.to_s,gets.chomp.to_i,gets.chomp.to_i,gets.chomp.to_i,gets.chomp.to_i)
puts emp1

