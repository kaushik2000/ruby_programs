#Operatinons Student class
class Student
    attr_accessor :rno, :name, :state, :branch, :cgpa
    def initialize()
       puts "Creating student object:"
       @rno,@name,@state,@branch,@cgpa=nil,nil,nil,nil,nil
    end
    def display()
        puts "Roll Number: #{@rno}\t\t\tName: #{@name}\t\t\tState: #{@state}\t\t\tBranch: #{@branch}\t\t\tCGPA: #{@cgpa}"
    end   
end

def operate
    stu=[]
    begin
        puts "\nSelect an operation:"
        puts "1. Add new student","2. Display all student details", "3. Display students by branch", "4. Display students by state", "5. Search student by roll number", "6. Search By part of name","7. Delete by roll number", "8. Count and display students by state", "9. Count and display students by branch", "10. Exit"
        operater=gets.chomp.to_i
        case (operater)
            when 1 then puts "Enter the student details to be added:"
                s=stu.size
                stu[s]=Student.new
                print "RollNo. : "
                begin
                    temp=gets.chomp.to_i
                    for i in 0...stu.size do
                        if stu[i].rno==temp.to_i
                            flag=1
                            puts "Roll number already exists"
                            print "Please enter another Roll number :"
                            break
                        else
                            flag=0
                        end
                        break if flag==1
                    end
                    if flag==0
                        stu[s].rno=temp.to_i  
                    end
                end while flag==1
                print "Name    : " 
                stu[s].name=gets.chomp.to_s
                print "State   : " 
                stu[s].state=gets.chomp.to_s
                print "Branch  : " 
                stu[s].branch=gets.chomp.to_s
                print "CGPA    : " 
                begin
                    temp=gets.chomp.to_f
                    if temp<=10.0
                        stu[s].cgpa=temp.to_f
                    else
                        puts "CGPA should not exceed 10.0"
                        print "Please enter correct CGPA :"
                    end
                end while temp.to_f>10.0
            when 2 then puts "Displaying all student details:"
                for i in 0...stu.size do
                    stu[i].display
                end
            when 3 then print "Enter the Branch to be searched: "
                t=gets.chomp.to_s
                b=[]
                for i in 0...stu.size do
                    if stu[i].branch.casecmp(t)==0
                        b.push(i)
                    end
                end
                if b.empty?
                    puts "No students from #{t} branch"
                else
                    puts "Displaying students from #{t} branch:"  
                    b.each do |i| 
                        stu[i].display
                    end
                end
            when 4 then print "Enter the State to be searched: "
                t=gets.chomp.to_s
                b=[]
                for i in 0...stu.size do
                    if stu[i].state.casecmp(t)==0
                        b.push(i)
                    end
                end
                if b.empty?
                    puts "No Students from #{t} state"
                else
                    puts "Displaying students from #{t} state: "   
                    b.each do |i|
                        stu[i].display
                    end
                end
            when 5 then print "Enter the Roll number to searched: "
                t=gets.chomp.to_i
                b=[]
                for i in 0...stu.size do
                    if stu[i].rno==t
                        b.push(i)
                    end
                end
                if b.empty?
                    puts "Roll number does not exist"
                else
                    b.each do |i|
                        stu[i].display
                    end
                end
            when 6 then print "Enter Name or keyword from name: "
                t=gets.chomp.to_s
                b=[]
                for i in 0...stu.size do
                    if stu[i].name.include?(t)
                        b.push(i)
                    end
                end
                if b.empty?
                    puts "No Students found"
                else
                    puts "Displaying students with keyword: #{t}"   
                    b.each do |i|
                        stu[i].display
                    end
                end
            when 7 then print "Enter roll number: "
                t=gets.chomp.to_i
                flag=0
                for i in 0...stu.size do
                    if stu[i].rno==t
                        flag=1
                        puts "Are you sure to delete record of roll number #{t}?[Y/N]"
                        check=gets.chomp
                        if check == "y"||"Y"
                            stu.delete_at(i)
                            puts "Deleting records of Roll number #{t}"
                        end   
                    end
                end
                if flag==0
                    puts "No record found for roll number #{t}"
                end
            when 8 then print "Enter the State to be searched for: "
                t=gets.chomp.to_s
                b=[]
                count=0
                for i in 0...stu.size do
                    if stu[i].state.casecmp(t)==0
                        b.push(i)
                        count=count+1
                    end
                end
                if b.empty?
                    puts "No Students from #{t} state"
                else
                    puts "Number of students from #{t} = #{count}"
                    puts "Displaying students from #{t} state:"   
                    b.each do |i|
                        stu[i].display
                    end
                end
            when 9 then print "Enter the Branch to be searched for:"
                t=gets.chomp.to_s
                b=[]
                count=0
                for i in 0...stu.size do
                    if stu[i].branch.casecmp(t)==0
                        b.push(i)
                        count=count+1
                    end
                end
                if b.empty?
                    puts "No Students from #{t} branch"
                else
                    puts "Number of students from #{t} = #{count}"
                    puts "Displaying students from #{t} branch:"   
                    b.each do |i|
                        stu[i].display
                    end
                end
            when 10 then puts "Exiting"
            else puts "Invalid Operation!"
        end
        puts "Press enter to continue..."
        delay=gets.chomp
    end while (!(operater==10))
end
puts "Initiating Student database-"
operate()
puts "--Shutting down Operation--Thank You-:)"
