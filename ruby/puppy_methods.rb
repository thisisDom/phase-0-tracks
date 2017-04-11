class Puppy
  def initialize
    puts "Initializing new puppy instance"
  end
  
  def dog_years(human_years)
    return human_years * 7
  end   

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def play_dead
    puts "*plays dead*"
  end
  def roll_over
    puts "*rolls over*"
  end
  
  def speak(integer)
    integer.times do
      puts "Woof"
    end
  end

end
bumper = Puppy.new
bumper.fetch("ball")
bumper.speak(4)
bumper.roll_over
puts bumper.dog_years(2)
bumper.play_dead