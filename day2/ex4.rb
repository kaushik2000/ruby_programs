
class Book
	attr_reader :title,:author,:price
	attr_writer :title,:author,:price
	def is_price_high?
		if @price>1000
			return true
		else
			return false
		end
	end
end
b1=Book.new
b1.title="Wings Of Fire"
b1.author="Dr.A.P.J.Abdul Kalam"
b1.price=2000
puts b1.title
puts b1.author
puts b1.price
puts b1.is_price_high?
