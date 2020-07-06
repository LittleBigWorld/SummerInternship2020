# З вхідної стрічки виділити всі підрядки, довжиною більше 5 та вивести їх у сортованому вигляді

# Ви маєте дописати логіку сортування масиву зі всіх слів з вхідного речення,
# довжина яких є строго більшою за 5.

class Calculator
  def string_sort input_string

    # вхідний рядок записуватиметься у змінну temp
    temp = input_string

    # temp слід розділити на множину підрядків за пробіл
    words=input_string.split(" ")

    # з отриманої множини вибрати лишень ті елементи, довжина яких більша за 5
    result=Array.new
    words.each do |word|
      if word.length > 5
        then result.push(word)
      end
    end

    result.sort!
    # посортувати масив та вивести його
    #for i in 0...result.size
    # for j in i+1...result.size
    #   if result[i]>result[j]
    #     tmp=result[j]
    #     result[j]=result[i]
    #     result[i]=tmp
    #   end
    # end
    #end
    # тут його слід вивести
    puts result

  end
end
obj=Calculator.new
obj.string_sort("abc abcd abcdef aaaaac aaaaab aaaaad")