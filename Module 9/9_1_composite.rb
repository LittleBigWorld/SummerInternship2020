# Ми маємо змоделювати файлову систему.
# Ви знаєте, що у ній зустрічаються файли та папки.
# Також ви знаєте, що у папки можна вкласти довільну кількість
# папок і файлів, а у файли нічого вкладати не можна.
# Як і файли, так і папки, мають ім'я та об’єм, тобто 
# займають певне місце на диску.
# 
# Користуючись об’єктним підходом, виділимо цю рису в окремий клас
# FileSystemElement - який матиме поля ім’я та об’єм. Ініціалізатор
# елементів цього класу прийматиме параметром ім’я, яка ставатиме іменем елементу.
# 
# Далі, беручи цей клас за основу створимо клас FSFile.
# Цей клас додадково визначатиме, що будь-який файл займатиме об’єм рівний 1.
# 
# Останнім класом в нас буде клас, який відповідатиме папкам FSFolder.
# Він володітиме списком всіх файлів, які входять у папку. Можна буде додавати
# файли до папки та отримати розмір папки.


# Вам слід зреалізувати наведену ієрархію класів.

# Клас, який представляє загальні риси елементів файлової системи:
# @name - назву елемента
# @size - його розмір
class FileSystemElement
  attr_reader :name, :size
  
  def initialize name 
    @name = name
  end
end

# клас, який представляє окремий файл у файловій системі.
class FSFile < FileSystemElement
  def initialize name,size
    # слід додати виклик функції initialize батьківського класу
    # і передати в неї параметр name
    super(name)
    @size = size
  end
end

# клас, який представляє папку у файловій системі. Папка може містити множину вкладених об’єктів
# файлової системи, тому ми вводимо змінну-об’єкту
# @files - множина ( масив ) всіх елементів поточної папки
# 
class FSFolder < FileSystemElement
 @files = []
 
 def initialize name
  # слід додати виклик функції initialize батьківського класу
  # і передати в неї параметр name
   super(name)
  @files = []
 end

 def addFile file
  # слід додати до масиву файлів в папці файл-аргумент даного методу
   @files.push(file)
 end

 # даний метод рекурсивно проходять по всіх елементах папки.
 # якщо елемент буде файлом, то метод size поверне об’єм файлу
 # якщо елемент буде папкою, то метод має викликати метод size цієї папки
 # в результаті обходу вмісту папки, необхідно вивести загальний розмір цієї папки.
 def size
  result = 0
  @files.each do |file|
    result+=file.size
  end
  result
 end

end

subfolder1=FSFolder.new("b")
file1=FSFile.new("c",1)
file2=FSFile.new("d",2)
subfolder1.addFile(file1)
subfolder1.addFile(file2)
subfolder2=FSFolder.new("e")
file3=FSFile.new("f",3)
file4=FSFile.new("g",4)
subfolder2.addFile(file3)
subfolder2.addFile(file4)
subfolder3=FSFolder.new("h")
file5=FSFile.new("i",5)
file6=FSFile.new("j",6)
subfolder3.addFile(file5)
subfolder3.addFile(file6)
folder=FSFolder.new("a")
folder.addFile(subfolder1)
folder.addFile(subfolder2)
folder.addFile(subfolder3)
puts subfolder1.size
puts subfolder2.size
puts subfolder3.size
puts folder.size