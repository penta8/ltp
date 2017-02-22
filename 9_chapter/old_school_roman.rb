def to_roman(number)
  roman = 'M' * (number / 1000)
  number = ((number / 1000) * 1000 - number).abs
  roman += 'D' * (number / 500)
  number = ((number / 500) * 500 - number).abs
  roman += 'C' * (number / 100)
  number = ((number / 100) * 100 - number).abs
  roman += 'L' * (number / 50)
  number = ((number / 50) * 50 - number).abs
  roman += 'X' * (number / 10)
  number = ((number / 10) * 10 - number).abs
  roman += 'V' * (number / 5)
  number = ((number / 5) * 5 - number).abs
  roman += 'I' * number
end
