class Question
  attr_accessor :question, :answer, :firstNum, :secondNum

  def initialize()
    @firstNum = rand(20)
    @secondNum = rand(20)
    @answer = firstNum + secondNum
  end

  def question
    "What does #{@firstNum} and #{@secondNum} equal?"
  end

end

# test = Question.new()
# puts test.question()
# puts test.answer

