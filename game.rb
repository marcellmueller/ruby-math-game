require './question.rb'

class Game
  attr_accessor :turn

  def initialize()
   @turn = rand(1..2)
  end

  def checkWin(player1, player2)
    if player1.lives <= 0
      puts "Player 2 Wins!"
      exit(true)
    end
    if player2.lives <= 0
      puts "Player 1 Wins!"
      exit(true)
    end
    if player1.score >= 3
      puts "Player 1 Wins!"
      exit(true)
    end
    if player2.score >= 3
      puts "Player 2 Wins!"
      exit(true)
    end
  end
    
  def checkAnswer(player, question)
    answer = gets.chomp
    number = question.answer
    if answer.to_i == number
      puts "#{answer} is correct!"
      player.right()
    elsif answer != question.answer
      puts "#{answer} is wrong!"
      player.wrong()
    end
    puts "#{player.name} score is #{player.score} with #{player.lives} lives remaining."
  end

  def play(player1, player2)
    puts "------New Turn-------"
    question = Question.new()
    if @turn == 1
      puts "Player 1 turn!"
      puts question.question()
      checkAnswer(player1, question)
      @turn = 2
      checkWin(player1, player2) 
    elsif @turn == 2
      puts "Player 2 turn!"
      puts question.question()
      checkAnswer(player2, question)
      @turn = 1
      checkWin(player1, player2)
    end
    play(player1, player2)
  end

end
