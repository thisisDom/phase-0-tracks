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
  def raises_hand
    puts "*#{@name} raises hand*"
  end
  
  def yawns
     puts "#{@name}, please cover your mouth"
  end
  
  def yells_angrily(words)
    puts words + "!!!"
  end
end

class Teacher
  include Shout
  def initialize(name)
    @name = name
  end
  
  def raises_hand
     puts "Why are you raising your hand, #{@name}. You're the teacher."
  end
  
  def yawns
    puts "Sorry class, I am very tired."
  end
  
end

class Student
  include Shout
  def initialize(name)
    @name = name
  end
  def yells_angrily(words)
    puts "#{@name}, please lower your voice."
  end
end
teacher = Teacher.new("Mr.Kim")
student = Student.new("Dominique")

teacher.raises_hand
student.raises_hand

teacher.yawns
student.yawns

teacher.yells_angrily("Keep it quiet")
student.yells_angrily("")