puts "Введите значение а:"
a = gets.chomp.to_f # ввод данных через консоль

puts "Введите значение b:"
b = gets.chomp.to_f

puts "Введите значение c:"
c = gets.chomp.to_f

D = b**2 - 4*a*c # вычисление дискриминанта

if D>0 # если дискриминант больше 0
  x1=(-b + D**(1.0/2.0))/(2.0*a)
  x2=(-b - D**(1.0/2.0))/(2.0*a)
  puts "Дискриминант: #{D}"
  puts "Корень 1: #{x1}"
  puts "Корень 2: #{x2}"
elsif D==0 # если дискриминант равен 0
  x=-b/2.0*a
  puts "Дискриминант: #{D}"
  puts "Корень: #{x}"
else # если дискриминант меньше 0
  puts "Корней нет"
end
