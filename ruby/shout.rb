# Module Shout
module Shout
  def self.yells_angrily(words)
    return words + "!!!" + " :("
  end
  def self.yells_happily(words)
    return words + "!!!" + " :)"
  end
end
puts Shout.yells_angrily("I'm so angry right now")
puts Shout.yells_happily("I'm so happy right now")  