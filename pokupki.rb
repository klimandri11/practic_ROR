# Фрагмент кода для того, чтобы можно было вводить русские символы через консоль
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
# начало основной программы
# инициализация переменных
secret = 'стоп'
tovar = ''
hesh = Hash.new
summa = 0
while tovar != secret # цикл до тех пор пока не будет введено слово стоп
  puts "Введите название товара:"
  tovar = gets.chomp # ввод данных через консоль
    if tovar != secret
      puts "Введите цену за единицу:"
      price = gets.chomp.to_f
      puts "Введите количество купленного товара:"
      kol = gets.chomp.to_f
      full_price = price * kol
      hesh[tovar] = {"Цена за единицу товара" => price, # заполнение хеша
      "Количество товара" => kol,
      "Итоговая сумма за товар" => full_price}
    end
    summa = summa + full_price
    full_price = 0
end
puts hesh # вывод хеша
puts "Итоговая сумма всех покупок: #{summa}"
