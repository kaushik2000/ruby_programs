#Operations on array of elements
class ArrayOp
    attr_accessor :a
    def initialize
        puts "Entering Database operation:"
        @a=[]
    end
    def operate 
        begin
            puts "\nSelect an operation:"
            puts "1. Add a value","2. Minimum", "3. Maximum", "4. Sum", "5. Average", "6. Search value by index","7. Search if value exists", "8. Display", "9. Delete value", "10. Exit"
            operater=gets.chomp.to_i
            case (operater)
                when 1 then puts "Enter the value to be added:"
                    @a.push(gets.chomp.to_i)
                when 2 then puts "Displaying the minimum value from the array",@a.min
                when 3 then puts "Displaying the minimum value from the array",@a.max
                when 4 then puts "Sum = "+@a.sum.to_s
                when 5 then puts "Average = "+(@a.sum.to_f/@a.size.to_f).to_s
                when 6 then puts "Enter the search index of array:"
                    s=gets.chomp.to_i
                    puts @a.at(s-1)
                when 7 then puts "Enter the value to be searched:"
                    s=gets.chomp.to_i
                    puts @a.include?(s)
                when 8 then puts "Displaying the array"
                    @a.display
                when 9 then puts "1.Delete by index","2.Delete by value","3.Back"
                    s=gets.chomp.to_i
                    if(s==1)
                        puts "Enter the index to be deleted"
                        i=gets.chomp.to_i
                        @a.delete_at(i-1)
                    elsif(s==2)
                        puts "Enter the value to be deleted"
                        i=gets.chomp.to_i
                        @a.delete(i)
                    else
                    end
                when 10 then puts "Exiting"
                else puts "Invalid Operation!"
            end
        end while (!(operater==10))
        puts "--Shutting down Operation--Thank You-:)"
    end
end

obj1=ArrayOp.new
puts "Creating initial Array--Enter the number of elements--"
j=gets.chomp.to_i
b=Array.new
for i in 0...(j) do
    b[i]=gets.chomp.to_i
end
obj1.a=b
obj1.operate