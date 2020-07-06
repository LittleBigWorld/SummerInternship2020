# Посортувати всі вхідні параметри програми в масиві

# Ви маєте дописати логіку сортування масиву у спадному порядку.

class Calculator
    def sort_incoming_args

    # при запуску скрипту з консолі, аргументи які йдуть після імені файлу попадають в масив ARGV
    puts "Отримані аргументи"
    puts ARGV

    # тут його слід скопіювати в новий масив
    a=ARGV
    #a = Array.initialize_copy(ARGV)

    # тут його слід посортувати в спадаючому напрямку
    for i in 0...a.size
        for j in i+1...a.size
            if a[i]<a[j]
                tmp=a[j]
                a[j]=a[i]
                a[i]=tmp
            end
        end
    end

    # тут його слід вивести
    puts "Посортовані вхідні аргументи"
    puts a[0...a.size]

  end
end
obj=Calculator.new
obj.sort_incoming_args