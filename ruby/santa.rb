# Santa Class
class Santa
  def initialize(ethnicity, gender)
    @age = 0
    @elf_count = 100
    @ethnicity = ethnicity
    @gender = gender
    @list = {
      naughty: [],
      nice: []
    }
    @location = "North Pole"
    @reindeer_ranking = [
      "Rudolph",
      "Dasher",
      "Dancer",
      "Prancer",
      "Vixen",
      "Comet",
      "Cupid",
      "Donner",
      "Blitzen"
    ]
    @sleigh_color = "red"
    puts "Hi, I'm Santa"
  end
  
  # Getter Methods 
    def age
      return @age
    end
    def ethnicity
      return @ethnicity
    end
    def gender
      return @gender
    end
  # Setter Methods
  def gender=(new_gender)
    @gender = new_gender
  end
  
  # Instance Methods
  def celebrate_birthday
    @age += 1
  end
  
  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}"
  end 
  
  def get_mad_at(reindeer)
    index = reindeer_ranking.find_index(reindeer) 
    if index != nil
      @reindeer_ranking = reindeer_ranking.pop(reindeer).push(reindeer)
    end
  end
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  
end
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

count = 0
santas.each do |santa|
  puts "Santa #{count}:" 
  santa.speak
  santa.eat_milk_and_cookies("chocolate chip")
  count += 1
end

