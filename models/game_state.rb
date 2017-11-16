require_relative 'block'
require_relative 'block_factory'
require_relative 'grid'

class Game_state
end

bf = Block_factory.new

g = Grid.new ( { 'x' => 5, 'y' => 8 })
puts g
