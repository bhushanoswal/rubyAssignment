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
        print "\n\n'RUBY' Found at "
        for i in 0..result.length-1
        print result[i]+1
        print ", "
        end
        print "positions in string.\n\n"
    end
end


RubyAssignment.findOccurance
RubyAssignment.findPosition
