# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# used to insert the code from another file into this file, relative to the location of this file.
# require is used to add something that is already pathed in ruby, typically Ruby class, modules, libraries, etc. that aren't commonly used.
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #  calling the methods to get the predict deaths and the spread of the virus
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # prints the predicted deaths for a state based on it's population density and size
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      death_factor = 0.4
    elsif @population_density >= 150
      death_factor = 0.3
    elsif @population_density >= 100
      death_factor = 0.2
    elsif @population_density >= 50
      death_factor = 0.1
    else
      death_factor = 0.05
    end
      number_of_deaths = (@population * death_factor).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # prints how fast the virus with spread within a state
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    if @population_density >= 200
      travel_time = 0.5
    elsif @population_density >= 150
      travel_time = 1
    elsif @population_density >= 100
      travel_time = 1.5
    elsif @population_density >= 50
      travel_time = 2
    else
      travel_time = 2.5
    end

    puts " and will spread across the state in #{travel_time} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
STATE_DATA.each do |state_name, population_info|

  state = VirusPredictor.new(state_name, population_info[:population_density], population_info[:population])
  state.virus_effects

end
=begin

What are the differences between the two different hash syntaxes shown in the state_data file?
  The two different hash syntaxes the use of both a string and a symbol as keys. Also how the values assignment was different. The string uses
  the hashrocket, where as the symbol uses a colon.
What does require_relative do? How is it different from require?
  It's used to insert the code from another file into this file, relative to the location of this file.
  It's different in that require is used to add something that is already pathed in ruby, typically Ruby class, modules, libraries, etc. that aren't commonly used.
What are some ways to iterate through a hash?
  Iterate through a hash using a loop or the method each followed by a block.
When refactoring virus_effects, what stood out to you about the variables, if anything?
  The variables being passed as arguments in the methods called in virus_effects were instance_variables and 
  don't needed to be passed because they can be directly accessed within the those methods
What concept did you most solidify in this challenge?
  I feel I most solidified refactoring and that refactoring is used for more than just condensing lines of codes.

=end
