
class Rover
	attr_accessor :x_axis, :y_axis, :direction

	def initialize(x_axis, y_axis, direction)
		@x_axis = x_axis
		@y_axis = y_axis
		@direction = direction
	end 

	def turnLeft
		if @direction == "N"
			@direction = "W"
		elsif @direction == "E"
			@direction = "N"
		elsif @direction == "S"
			@direction = "E"
		elsif @direction == "W"
			@direction = "S"
		end
	end

	def turnRight
		if 	@direction == "N"
			@direction = "E"
		elsif @direction == "E"
			@direction = "S"
		elsif @direction == "S"
			@direction = "W"
		elsif @direction == "W"
			@direction = "N"
		end
	end

	def move
		if @direction == "N"
			@y_axis += 1
		elsif @direction == "E"
			@x_axis += 1
		elsif @direction == "S"
			@y_axis -= 1
		elsif @direction == "W"
			@x_axis -= 1
		end
	end

	def read_instructions(command)
		command.split(//).each do |user_input|
		if user_input == "M"
			move
		elsif user_input == "L"
			turnLeft
		elsif user_input == "R"
			turnRight
		else
			"Rover doesn't understand, EXTERMINATE"
	    end
	end
    end
end

rover = Rover.new(0,0, "N")
puts "You're now operating a mars rover. Use 'M' to move the rover, and 'L or R' to turn the rover!"
puts "Rover is facing #{rover.direction} and located at x axis #{rover.x_axis} and y axis #{rover.y_axis}"
puts "Enter your command!"
while true 
commands = gets.chomp.upcase
rover.read_instructions(commands)
puts "Rover is now facing #{rover.direction} and is located at x axis #{rover.x_axis} and y axis #{rover.y_axis}"
break if commands == "EXIT"
end

