class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
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