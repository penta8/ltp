def leap_year?(y)
  y % 400 == 0 || (y % 4 == 0 && !(y % 100 == 0))
end

def leap_years(start, final)
  years = []
  (start..final).each do |n|
    if leap_year?(n)
      years.push(n) 
    end
  end
  years
end
