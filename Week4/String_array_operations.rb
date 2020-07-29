#Operatinons on String array
class StringOp
    attr_accessor :a
    def initialize
        puts "Initiating String operations-"
        @a=Array.new
    end
    def uniqDom
        b=[]
        j=0
        for i in 0...@a.size do
            b[j]=@a[i].split("@").last
            j=j+1
        end
        puts b.uniq
        b.clear
    end
    def operate 
        begin
            puts "\nSelect an operation:"
            puts "1. Add a mail-ID","2. Display All", "3. Display .edu Ids", "4. Search at index", "5. Delete mail ID by value", "6. Display unique domains of all mail IDs","7. Count mail IDs in given domain", "8. Exit"
            operater=gets.chomp.to_i
            case (operater)
                when 1 then puts "Enter the value to be added:"
                    @a.push(gets.chomp.to_s)
                    if a.last.include?("@")
                        puts "Mail ID added successfully"
                    else 
                        @a.pop
                        puts "Invalid E-mail ID : Removed"
                    end
                when 2 then puts "Displaying all E-mail IDs:"
                    @a.display
                when 3 then puts "Displaying .edu IDs:"
                    j=0
                    for i in 0...@a.size do
                        if @a[i].include?(".edu")
                            puts @a[i]
                            j=1
                        end
                    end
                    puts "None" if j==0
                when 4 then puts "Enter the index to be searched:"
                    s=gets.chomp.to_i
                    puts "=> "+@a.at(s-1)
                when 5 then puts "Enter the mail ID to be deleted:"
                    s=gets.chomp.to_s
                    puts ("Are you sure to delete #{s}? [Y/N]")
                    e=gets.chomp.to_s
                    if (e == "Y" || "y")
                        if @a.delete(s)
                            puts "Deleted yes"                        
                        else
                            puts "Already inexisting e-mail ID!!"
                        end    
                    else
                    end
                    
                when 6 then puts "Displaying unique domains of all email-ids:"
                    uniqDom
                when 7 then puts "Enter the domain to be counted for:"
                    s=gets.chomp.to_s
                    j=0
                    for i in 0...@a.size do
                        if @a[i].include?(s)
                            j=j+1
                        end
                    end
                    puts "Total e-mail IDs in the domain #{s} = "+j.to_s
                when 8 then puts "Exiting"
                else puts "Invalid Operation!"
            end
        end while (!(operater==8))
        puts "--Shutting down Operation--Thank You-:)"
    end
end
obj1=StringOp.new
obj1.operate
