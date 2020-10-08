require 'pry'


class School

    attr_accessor :grade

    def initialize(name)
        @name = name
        @roster = {}
    #    @roster[grade] = []
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
        else 
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(grade) 
         @roster[grade]
    end

    def sort
        @roster.each do |grade, kids|
           kids.sort!
            #  binding.pry  
        end
    end
end