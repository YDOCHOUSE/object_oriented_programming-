class Person
	attr_accessor :name
    def initialize(name)
    	@name = name
    end

    def greeting
    	"Hello, My name is #{@name}"
    end

end

class Student < Person

  def learn 
  	puts "I get it!"
  end

end

class Instructor < Person
  
  def teach
  	puts "Everything is ruby is an object"
  end

end


instructor1 = Instructor.new("Chris")
puts instructor1.greeting
student1 = Student.new("Cristina")
puts student1.greeting