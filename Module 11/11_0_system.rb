require_relative "11_3_quiz"

# Основний модуль програми
# 
# тут формується об'єкт тексту Quiz,
# наповнюється його питаннями Question
# викликається метод для проходження тесту та
# виводяться результати тестування.
# 
# Для його роботи необхідно підключити файл з класом Quiz.

active_quiz = Quiz.new

# Наповнення тесту питаннями
(1..5).each { |f|
#(1..1).each { |f|
question = Question.new "За якою позицією ховається відповідь?","Номер відповіді випадає випадковим чином."
#question=Question.new "Номер відповіді дорівнює номеру питання","Мяу"
  #if (state=f==e) and (f range != e range) -> division by zero
  (1..4).each { |e|
  #(1..5).each {|e|
  #(1..2).each { |e|
    state = ( (rand(46) % 2 == 0) ? true : false) #possibity of 0 correct answers -> division by 0
    #state=(2..3).include?(e)
    #state=f==e
    question.add_answer Answer.new("Відповідь тут", state)
  }
  #question.add_answer Answer.new("Відповідь тут", true) ??

  #fix division by 0: if 0 correct answers, make random answer correct
  tmp=question.answers
  count=0
  tmp.each do |ans|
    if ans.correct then count+=1 end
  end
  if count==0 then question.answers[rand(question.answers.count)].correct=true end
  active_quiz.add_question question
}

# Запускається процес тестування
active_quiz.start
# Формується і виводиться аналітика по результатах тестування
active_quiz.generate_result


