require './human'

class Ogre
  attr_reader :name,
              :home,
              :swings,
              :encounter_counter

  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(human)
    @encounter_counter += 1
    human.increment_encounter_counter
    if human.get_encounter_counter % 3 == 0
      swing_at(human)
    end
  end

  def swing_at(human)
    @swings += 1
    if @swings % 2 == 0
      human.toggle_knock_out(true)
    end
  end

  def apologize(human)
    human.toggle_knock_out(false)
  end
end
