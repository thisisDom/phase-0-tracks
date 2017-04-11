# module Flight
module Flight
  def take_off(altitude)
    puts "#{self.class} taking off and ascending until reaching #{altitude} ..."
  end
end
# class Bird
class Bird
  include Flight
end

# class Plane
class Plane
  include Flight
end

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)
