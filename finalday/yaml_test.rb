require 'yaml'
require './p051gamecharacters'
gc = GameCharacter.new(120, 'Magician', ['spells', 'invisibility'])
open("gc", "w") { |f| YAML.dump(gc, f)}
data = open("gc") {|f| YAML.load(f)}
puts data.power.to_s + ' ' + data.type + ' '
data.weapons.each do |w|
  puts w + ' '
end