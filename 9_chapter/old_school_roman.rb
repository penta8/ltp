EQUIV = [['M', 1000], ['D', 500], ['C', 100],
         ['L', 50], ['X', 10], ['V', 5], ['I', 1]]

def to_roman(number)
  roman = ''
  EQUIV.each do |equiv|
    roman += equiv[0] * (number / equiv[1])
    number = ((number / equiv[1]) * equiv[1] - number).abs
  end
  roman
end
