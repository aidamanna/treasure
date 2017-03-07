require_relative 'treasure'

treasure_location = Location.random
treasure_map = TreasureMap.new(treasure_location)
guess = ''

def enter_coordinates
  gets.chomp('\n').split.map { |c| c.to_i}
end

while guess != 'Success'
  printf 'Enter treasure map location: '
  coordinates = enter_coordinates

  user_location = Location.new(coordinates[0], coordinates[1])

  guess = treasure_map.is_in(user_location)
  puts guess
end
