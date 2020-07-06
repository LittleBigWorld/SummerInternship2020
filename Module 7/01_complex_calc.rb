﻿# Даний клас реалізує операції з комплексними числами.
# Після реалізації цього класу ми зможемо:
# 1. порахувати модуль комплексного числа
# 2. додати два комплексні числа
# 3. помножити два комплексні числа
# 
# Оскільки комплексні числа складаються з  двох частин
# дійсної ( Real, re) та уявної (Imaginary, im), наші об’єкти
# мусять мати цих два поля.

# Ви мусете зреалізувати методи обчислення модуля, суми та добутку двох комплексних чисел.

class ComplexNumber
  # Оголосіть за допомогою attr_accessor два поля
  # re та im. Вони відповідатимуть дійсній ( Real )
  # та уявній ( Imaginary ) частинам комплексного числа.
  attr_accessor :re, :im

  # у метод initialize передайте два параметри
  # перший з яких присвойте змінній об'єкту re,
  # а другий - im.
  def initialize real, imaginary
    @re = real
    @im = imaginary
  end

  # Введіть найпростішу операцію над комплексним числом - модуль.
  # Він обраховується, як сума квадратів його складових -
  # дійсної та уявної частини.
  def modulo
    re*re+im*im
  end

  # Операція додавання двох дійсних чисел передбачає
  # створення нового екземпляру класу ComplexNumber,
  # на присвоєння його складовим сум відповідних складових
  # об'єкта-отримувача та об'єкта-аргумента.
  # 
  # Вхідним аргументом передається 1 об'єкт класу ComplexNumber.
  # Результатом є новий об'єкт класу ComplexNumber.
  def add complex
    res = ComplexNumber.new 0, 0
    res.re = complex.re+re
    res.im = complex.im+im
    res
  end

  # Операція множення двох дійсних чисел передбачає
  # створення нового екземпляру класу ComplexNumber,
  # та присвоєння його складовим таких виразів.
  # 
  # Дійсною частина нового числа буде різниця добутків
  # дійсних частин та уявних чистин двох чисел.
  # re1 * re2 - im1 * im2
  # 
  # Уявна частина - це їх сума.
  # re1 * re2 + im1 * im2
  # 
  # Вхідним аргументом передається 1 об'єкт класу ComplexNumber.
  # Результатом є новий об'єкт класу ComplexNumber.
  def multiply complex
    res = ComplexNumber.new 0, 0
    res.re = re*complex.re-im*complex.im
    res.im = re*complex.re+im*complex.im
    res
  end
end
num1=ComplexNumber.new(2,3)
num2=ComplexNumber.new(5,6)
puts num1.modulo
puts num2.modulo
puts num1.add(num2).re
puts num1.add(num2).im
puts num1.multiply(num2).re
puts num1.multiply(num2).im