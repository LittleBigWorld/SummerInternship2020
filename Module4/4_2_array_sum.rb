# програма для підсумовування всіх членів масиву

# Ви маєте дописати логіку сумування всіх членів масиву params,
# записавши результат у змінну b.

class Calculator
  def sum_of_array *params

    # вхідні параметри будуть записуватися у масив a
    a = params

    # у змінну b слід записати суму всіх отриманих чисел з a
    b=0
    for i in 0...a.length
      b+=a[i]
    end

    # тут його слід вивести
    puts b

  end
end
#params=Array.new
#params.push 3
#params.push 4
#params.push 5
obj=Calculator.new
obj.sum_of_array(3,4,5)