require './player.rb'
require './question.rb'
require './game.rb'

# class Main
#   attr_accessor :turn

#   # def initialize()
#   #  @turn = 
#   # end


# end

player1 = Player.new('Player 1')
player2 = Player.new('Player 2')
game = Game.new()

puts game.play(player1, player2)