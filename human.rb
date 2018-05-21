class Human
  attr_reader :name,
              :encounter_counter

  def initialize(name = "Jane")
    @name = name
    @encounter_counter = 0
    @knocked_out = false
  end

  def increment_encounter_counter
    @encounter_counter += 1
  end

  def notices_ogre?
    if @encounter_counter % 3 == 0
      return true
    else
      return false
    end
  end

  def get_encounter_counter
    @encounter_counter
  end

  def toggle_knock_out(value)
    @knocked_out = value
  end

  def knocked_out?
    @knocked_out
  end
end
