class Game
 
  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @player = @player1
    @turn = true
  end

  def score
    puts "P1: #{@player1.life}/3 vs P2: #{@player2.life}/3"
    puts "----- NEW TURN -----"
  end


  def ask_question
    @turn ? @player = @player1 : @player = @player2
    question = Question.new

    puts @player == @player1 ? "Player 1: #{question.question_generator}" : "Player 2: #{question.question_generator}"
  
    user_answer = gets.chomp.to_i

    if(user_answer == question.answer)
      puts "YES! You are correct"
    else
      puts "Nope! Wrong Answer!"
      @player.adjust_score
    end

    @turn ? @turn = false : @turn = true

  end

  def play
    
    until @player1.life == 0 || @player2.life == 0 do
      ask_question and score
    end
    
    puts "---- GAME OVER ---- "
  
    puts @player == @player1 ? "Player 2 wins with a score of #{@player2.life}/3" : "Player 1 wins with a score of #{@player1.life}/3"
  end

end