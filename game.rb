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
      puts "Nope"
      @player.adjust_score
    end

    @turn ? @turn = false : @turn = true

  end

   # make the game run until game over

end