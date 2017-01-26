#!/usr/bin/ruby -w

# Roman Numerals
# 4 = IV
# 9 = IX
# ...

puts 'enter an integer:'
num = gets
if num.to_i != num.to_f
  puts 'num is not an integer'
else
  str = ''
  num = num.to_i
  puts 'the number: ' + num.to_s

  thousands = num / 1000
  if thousands > 0
    str += 'M' * thousands
    num -= thousands * 1000
  end

  if num >= 900
    str += 'CM'
    num -= 900
  end

  if num >= 500
    str += 'D'
    num -= 500
  end

  if num >= 400
    str += 'CD'
    num -= 400
  end

  if num >= 100
    hundreds = num / 100
    str += 'C' * hundreds
    num -= 100 * hundreds
  end

  if num >= 90
    str += 'XC'
    num -= 90
  end

  if num >= 50
    str += 'L'
    num -= 50
  end

  if num >= 40
    str += 'XL'
    num -= 40
  end

  if num >= 10
    tens = num / 10
    str += 'X' * tens
    num -= 10 * tens
  end

  if num == 9
    str += 'IX'
    num -= 9
  end

  if num >= 5
    str += 'V'
    num -= 5
  end

  if num == 4
    str += 'IV'
    num -= 4
  end

  if num > 0
    str += 'I' * num
  end

  puts 'Roman: ' + str
end