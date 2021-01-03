# require './player.rb'
# require './question.rb'

class Main
  attr_accessor :turn

  def initialize()
   @turn = 0
  end

  def randomTurn
    @turn = rand(1..2)
  end

  def checkWin(player1Lives, player2Lives)
    if player1Lives <= 0
      puts "Player 2 Wins!"
      exit(true)
    end
    if player2Lives <= 0
      puts "Player 1 Wins!"
      exit(true)
    end
  end

end

marcel = Main.new()
puts marcel.randomTurn
puts marcel.checkWin(1, 0)
