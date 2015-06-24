# Ruby Objects Calculator

# Create a Calculator class
# The calculator should be able to store two values, value1 and value2.
# Create add, subtract, multiply, and divide methods that perform these operations 
# on the two values and return the results



class Calculator

  def initialize(value1, value2)
    @value1 = value1
    @value2 = value2
  end

  def addition
    sum = @value1 + @value2
    puts "The sum of #{@value1} and #{@value2} is #{sum}"
  end

  def subtraction
    difference = @value1 - @value2
    puts "The difference of #{@value1} and #{@value2} is #{difference}"
  end

  def multiplication
    product = @value1 * @value2
    puts "The product of #{@value1} and #{@value2} is #{product}"
  end

  def division
    quotion = @value1 / @value2
    puts "The quotion of #{@value1} and #{@value2} is #{quotion}"
  end

end




# Elevator
# Create an Elevator class that has a floor attribute
# Instances of elevator should be aware of what floor they're on, have a method to go up or down, and have a method to
# announce a cheery greeting along with the current floor if the instance is asked (.greet) Extra credit: a method to play elevator music.

class Elevator

  def initialize (floor, destination)
    @floor = floor
    @destination = destination
    @music = true
  end


  attr_accessor :music


  def go_up
    if @floor < @destination
      puts "Going up."
      for i in @floor..@destination
        puts "Floor #{i}"
        if i == @destination
          puts "You have reached your floor. Have a nice day."
        end
      end
    elsif @floor > @destination
      puts "This elevator is not going down. This elevator is going up."
    else
      puts "You're already on this floor: #{@destination}"
    end
  end


  def go_down
    if @floor > @destination
      puts "Going down."
      @floor.downto(@destination) do |i|
        puts "Floor #{i}"
        if i == @destination
          puts "You have reached your floor. Have a nice day."
        end
      end
    elsif @floor > @destination
      puts "This elevator is not going up. This elevator is going down."
    else
      puts "You're already on this floor: #{@destination}"
    end
  end


  def muzak
    if @music == true
      puts "Smooth Jazz all the time"
    else
      puts "Hello Darkness my o'l friend..."
    end
  end
  
  
end


  
