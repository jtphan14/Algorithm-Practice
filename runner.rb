require_relative 'game'

data_set = DataSet.build(:small)
data_set.cases

counter = 0
data_set.cases.each do |test_case|
  counter += 1
  game = Game.new(test_case.naomi_block_weights, test_case.ken_block_weights)
  puts "Test Case: #{counter}"
  game.compare
end

large_data_set = DataSet.build(:large)
counter = 0
large_data_set.cases.each do |test_case|
  counter += 1
  game = Game.new(test_case.naomi_block_weights, test_case.ken_block_weights)
  puts "Large Test Case: #{counter}"
  game.compare
end
