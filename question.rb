class Question

  def initialize
    @operators = [:+, :-, :*] # not adding division - too difficult for people to do in their head
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @operator = @operators.sample
  end

  def question_generator
    "What does #{@number1} #{@operator} #{@number2} equal?"
  end

  def answer
    @number1.send(@operator, @number2) #nvokes the method identified by symbol - https://apidock.com/ruby/Object/send
  end

end