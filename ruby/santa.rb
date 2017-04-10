# Santa Class
class Santa

  attr_accessor :age, :list
  attr_reader :ethnicity, :gender, :elf_count, :location, :reindeer_ranking, :sleigh_color

  def initialize(gender, ethnicity)
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
  end
  # Instance Methods
  def celebrate_birthday
    @age += 1
  end
  
  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}"
  end 
  def get_info
    puts "Hi I'm a #{@gender}, #{@ethnicity} santa"
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
ethnicities = [
  "Asian",
  "Black/African",
  "Hispanic",
  "Middle Eastern",
  "Mixed Race",
  "Native American",
  "Pacific Islander",
  "White/Caucasian"
]
genders = [
  "bigender",
  "female",
  "genderqueer",
  "male",
  "pangender",
  "transgender"
]
santas = []
150.times do
  gender = genders.sample
  ethnicity = ethnicities.sample
  santas << Santa.new(gender, ethnicity)
end
santas.each do |santa|
  santa.get_info
end

