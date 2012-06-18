#!/usr/bin/ruby -w

class RubyAssignment
    
    @string1="RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag."
    @string2="RUBY does not require (or support) explicit type definition in variable declaration; a variable's type is determined by the context in which the variable is used."
    
    def self.findOccurance
        result1=@string1.scan("RUBY")
        result2=@string1.scan("RUBY").count()
        puts "\n\nResult: #{result1} \n'RUBY' Found #{result2} times in string.\n\n"
    end
    
     def self.findPosition
        result=@string1.to_enum(:scan,/RUBY/).map {Regexp.last_match.begin(0)}
        print "'RUBY' Found at "
        for i in 0..result.length-1
        print result[i]+1
        print ", "
        end
        print "positions in string.\n\n"
    end
    
    def self.wordsToArray
        result=@string1.split(/ /)
        printArray(result,0)
         print "\n\n"
    end
    
    def self.printArray(result,i)
        if i<result.length
            print result[i]
            print " "
            printArray(result,i+1)
        end
    end
    
    def self.stringCapitalize
        result = @string1.split.each{|x| x.capitalize!}.join(" ")
        print result
        print"\n\n"
    end
    
    def self.stringJoin
        result = @string1+@string2
        print result
        print"\n\n"
    end
    
    def self.heredoc
        puts <<-String1 
            RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the code it finds until it runs into a RUBY closing <br/> tag. 
        String1
        puts  <<-String2 
        RUBY does not require (or support) explicit type definition in variable declaration; a variable's type is determined by the context in which the variable is used.
        String2
        puts "\n\n"
    end
    
    def self.currentDate
        time=Time.new
        result = time.inspect
        print result
        print"\n\n"
    end
    
    def self.printCustomDate
        date = Time.local(2012, 01, 12) 
        result = date.strftime('%dth %b %Y')
        print result
        print"\n\n"
    end
    
    def self.addDays
        date = Time.new
        result = date+(60*60*24*7)
        print result
        print"\n\n"
    end
    
    def self.devideString
        stringArray = @string1.split(/ /)
        subStringArray = stringArray.each_slice(stringArray.length/3.9).to_a
        for i in 0..subStringArray.length-1
            finalArray=subStringArray[i].each{|x|}.join(" ")
            puts finalArray
        end
        print"\n\n"
    end
    
     def self.devideReverseString
        stringArray = @string1.split(/[.]/)
        result1 = stringArray.each{|x| puts (x.split(/ /)).reverse.join(" ")}
        print"\n\n"
    end
    
    def self.removeHtmlTag
        result = @string1.gsub(/(<[^>]*>)|\n|\t/s) {" "}
        print result
        print"\n\n"
    end
    
    def self.getLength
        result1 = @string1.length
        result2 = @string2.length
        print "Length of string1: #{result1} & Length of string2: #{result2}"
        print"\n\n"
    end
    
    def self.writeFile
        aFile = File.new("test.txt", "w+")
        if aFile
            aFile.syswrite(@string1)
            puts "successful write on file test.txt"
        else
            puts "Unable to open file!"
        end
        print"\n\n"
    end
    
    def self.getGlobalVar
        global_variables.each{|x| puts x}
        print"\n\n"
    end
    
    def self.getDays
        date1 = Time.local(2011,12,05)
        date2 = Time.local(2010,12,04)
        if date1>=date2
        result=(date1-date2)/60/60/24
        else
        result=(date2-date1)/60/60/24
        end
        print result
        print"\n\n"
    end
    
    def self.addDay
        date = Time.new
        result = date+(60*60*24*20)
        print result
        print"\n\n"
    end
    
    def self.getDateArray
        puts Time.now.to_a[0..Time.now.to_a.length]
        print"\n\n"
    end
    
    def self.menu
        
       print "1. Find occurance of RUBY from string 1.\n2. Find the position where RUBY occures in the string 1.\n3. Create array of words in string 1 & print them using arecursive function.\n4. Capitalise string 1\n5. Combine string 1 & 2.\n6. Print string 1 & 2 using heredoc.\n7. Print current date\n8. print 12th Jan 2012\n9. add 7 daysincurrent date\n10. Cut the string 1 into 4 parts & print it.11. Divide the string 1 by occurances of '.'. Combine the array in reverse word sequence\n12. Remove theHTML characters from string.\n13. Print the 'RUBY' word from string 1 by traversing it using string functions\n14. Find the length of string 1 & 2\n15. Create file &write string 1 to that file using RUBY functions.\n16. Print all Global varibles provided by RUBY\n17. Compare two dates. (12-4-2010 & 12-5-2011). Calculate the daysbetween these two dates.\n18. Print date after 20 days from current date\n19. Print date in array format.\nSelect Option=> "
       
       ch=gets.chomp.to_i
            
            case ch
                when 1
                    findOccurance
                when 2
                    findPosition
                when 3
                    wordsToArray
                when 4
                    stringCapitalize
                when 5
                    stringJoin
                when 6
                    heredoc
                when 7
                    currentDate
                when 8
                    printCustomDate
                when 9
                    addDays
                when 10
                    devideString
                when 11
                    devideReverseString
                when 12
                    removeHtmlTag
                when 13
                    findOccurance
                when 14
                    getLength
                when 15
                    writeFile
                when 16
                    getGlobalVar
                when 17
                    getDays
                when 18
                    addDay
                when 19
                    getDateArray                    
                else 
                    puts "wrong choice"       
            end

    end

end

RubyAssignment.menu

