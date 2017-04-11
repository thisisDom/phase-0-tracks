class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end
bumper = Puppy.new
bumper.fetch("ball")
