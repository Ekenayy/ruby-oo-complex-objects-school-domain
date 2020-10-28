require 'pry'
# code here!
class School
attr_reader :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end


    def add_student(student_name, grade)
        
        #self.roster[grade] ||= []
        #self.roster[grade] << student_name
        if @roster.has_key?(grade)
        @roster[grade] << student_name
        else 
        @roster[grade] = [student_name]
               #binding.pry
        end
        #binding.pry
    end 

    def grade(grade)
        @roster[grade]
    end 

    def sort 
        self.roster.each do |grade, students|
            students.sort!
            #binding.pry 
        end 
        #@roster.sort_by {|grade, name| grade}.to_h
        #binding.pry
    end 
#binding.pry 
end