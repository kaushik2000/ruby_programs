#Menu based simple calculator
class Calc
    def initialize
        puts "Initialising calculator"
    end
    def operate 
            begin
                puts "Enter the operands:"
                operand1=gets.chomp.to_f
                operand2=gets.chomp.to_f
                puts "Select an operator:"
                puts "+(ADD)","-(SUBTRACT)","*(MULTIPLY)","/(DIVIDE)"
                operator=gets.chomp.to_s
                case (operator)
                    when "+" then puts "#{operand1} + #{operand2} = #{operand1+operand2}"
                    when "-" then puts "#{operand1} - #{operand2} = #{operand1-operand2}"
                    when "*" then puts "#{operand1} * #{operand2} = #{operand1*operand2}"
                    when "/" then puts "#{operand1} /' #{operand2} = #{operand1/operand2}"
                    else puts "Invalid Operation!"
                end
                puts "Do you wish to continue [Y/N]"
                a=gets.chomp.to_s
            end while a=="Y"||a=="y"
            puts "Thank You--Shutting down calculator__:)"
    end
end
c=Calc.new
c.operate