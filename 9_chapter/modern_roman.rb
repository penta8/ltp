EQUIV = [['M' , 1000, false], ['CM', 900, true ], ['D' , 500, false],
         ['CD', 500 , true ], ['C' , 100, false], ['XC', 90 , true ],
         ['L' , 50  , false], ['XL', 50 , true ], ['X' , 10 , false],
         ['IX', 9   , true ], ['V' , 5  , false], ['IV', 4  , true ],
         ['I' , 1   , false]]

def to_roman(number)
  roman = ''
  EQUIV.each do |equiv|
    if equiv[2] && number / equiv[1] == 1
      roman += equiv[0]
      number = (number - equiv[1]).abs
    else
      roman += equiv[0] * (number / equiv[1])
      number = (number - (number / equiv[1] * equiv[1])).abs
    end
  end
  roman
end
