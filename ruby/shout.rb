# Module Shout
#module Shout
#  def self.yells_angrily(words)
#    return words + "!!!" + " :("
#  end
#  def self.yells_happily(words)
#    return words + "!!!" + " :)"
#  end
#end
#puts Shout.yells_angrily("I'm so angry right now")
#puts Shout.yells_happily("I'm so happy right now")

module Shout
  def raise_hand(words)
  end
  def yawns
    if(self.class == 'Teacher')
      puts "Pardon me, class."
    end
    else
      puts "#{self.name}, please cover your mouth"
    end
  end
  def yells_angrily(words)
  end
end

module Teacher
  include Shout

  def initialize(name)
    @name = name
  end
end

module Student
  include Shout

  def initialize(name)
    @name = name
  end
end
teacher = Teacher.new("Mr.Kim")
student = Student.new("Dominique")