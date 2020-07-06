# Написати програму, яка обраховує вік користувача, базуючись на даті народження у певному форматі
# Програма має видавати вік, або видавати "-1" у випадку некоректної вхідної інформації


# Ви маєте дописати частину, де вхідна інформація перевіряється на коректність
# та записує у змінну result очікуване значення - кількість років людини, або -1.

class Calculator
  def console_calculator

      # Остаточний вік користувача програми
      result = 0

      # Вивід інформаційного повідомлення
      puts "Програма обчислить ваш вік"
      puts "Введіть дату свого народження у такому форматі дд-мм-рррр"
      
      # Зчитування даних з консолі
      dob = gets.chomp

      # Формування масиву, внаслідок дії методу split (поділити) класу String
      dob = dob.split "-"

      # Ініціалізації змінних, в яких міститься інформація про рік, місяць та день народження користувача
      dob_year = dob[2].to_i
      dob_month = dob[1].to_i
      dob_day = dob[0].to_i

      # Використання вбудованого об’єкту Time для знаходження поточної дати
      current_time = Time.new

      # Ініціалізації змінних, в яких міститься інформація про рік, місяць та день місяця
      current_year = current_time.year
      current_month = current_time.month
      current_day = current_time.day
      
    	# Алгоритм

      # Перевірка вхідних даних на правильність та обчислення дати народження.
      # Поелементний аналіз базується на порівнянні послідовно років, місяців, днів місяця.
      if dob_day < 1 or dob_day > 31 or dob_month < 1 or dob_month > 12 or dob_year < 1900 or dob_year > current_year - 5
      then result=-1
      else
          result=current_year-dob_year
          if (current_month<dob_month)
          then result-=1
          end
          if (current_month==dob_month && current_day<dob_day)
          then result-=1
          end
      end


      puts result

  end
end
obj=Calculator.new
obj.console_calculator
