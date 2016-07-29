require_relative 'io_helpers'

class Game

  def initialize(naomi_block_weights, ken_block_weights)
    @sorted_naomi = naomi_block_weights.sort
    @sorted_ken = ken_block_weights.sort
    @naomi_wins = 0
  end

  def compare
    @sorted_naomi.each do |naomi_block_weight|
      higher_ken_blocks = @sorted_ken.select do |ken_block_weight|
        naomi_block_weight < ken_block_weight
      end
      if higher_ken_blocks.any?
        @sorted_ken.delete(higher_ken_blocks[0])
      else
        @naomi_wins  +=1
      end
    end
    puts @naomi_wins
  end

  def deceitful
    
  end
end
#
# naomi_block_weights = [0.186, 0.389, 0.907, 0.832, 0.959, 0.557, 0.300, 0.992, 0.899]
# ken_block_weights = [0.916, 0.728, 0.271, 0.520, 0.700, 0.521, 0.215, 0.341, 0.458]
#
# game = Game.new(naomi_block_weights, ken_block_weights)
# game.compare
