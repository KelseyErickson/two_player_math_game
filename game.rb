class Game
 
  def initialize
    @player1 = Player.new
    @player2 = Player.new
  end

  def score
    puts "P1: #{@player1.life}/3 vs P2: #{@player2.life}/3"
    puts "----- NEW TURN -----"
  end

   # ask a question and take in input (I/O)

   # make the game run until game over

end