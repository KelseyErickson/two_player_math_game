class Question

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
  end

  def question_generator
    "What does #{@number1} plus #{@number2} equal?"
  end
end