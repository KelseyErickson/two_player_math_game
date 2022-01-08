class Player

  attr_accessor :life, :adjust_score

  def initialize 
    @life = 3
  end

  def adjust_score
    @life -= 1
  end
end