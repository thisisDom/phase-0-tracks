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

class Runner
  def initialize
    "Initializing new Runner instance"
  end
  
  def jogs
    puts "*jogs*"
  end
  
  def sprints
    puts "*sprints*"
  end
  
  def hundred_meter_time(time)
    puts time * 10
  end
  
end

runners = []
usain_bolt = Runner.new
50.times do 
  runners << Runner.new
end
usain_bolt.jogs
usain_bolt.sprints
usain_bolt.hundred_meter_time(9.59)
runners.each do |runner|
  usain_bolt.jogs
  usain_bolt.sprints
  usain_bolt.hundred_meter_time(Random.rand(8.59..10.00))
end
