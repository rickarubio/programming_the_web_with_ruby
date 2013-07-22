# Example on Object serialization
class GameCharacter
  def initialize(power, type, weapons)
    @power = power
    @type = type
    @weapons = weapons
  end
  attr_reader :power, :type, :weapons
end