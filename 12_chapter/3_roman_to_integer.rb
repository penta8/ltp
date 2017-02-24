SPECIALS = [:CM, :CD, :XC, :XL, :IX, :IV].freeze
EQUIVALENCES = { M: 1000, CM: 900, D: 500, CD: 400,
                 C: 100, XC: 90, L: 50, XL: 40,
                 X: 10, IX: 9, V: 5, IV: 4, I: 1 }.freeze

# Roman (String) -> Integer
def roman_to_integer(roman)
  separated = separate_values(roman)
  separated.inject(0) { |sum, x| sum + EQUIVALENCES[x] }
end

def separate_values(roman)
  together = false
  separated = []
  roman.split('').each_with_index do |letter, index|
    if together
      separated[separated.length - 1] =
        (separated.last.to_s + letter.to_s).to_sym
      together = false
      next
    end
    together = together?(roman, letter, index)
    separated.push(letter.to_sym)
  end
  separated
end

def together?(roman, letter, index)
  roman[index + 1] &&
    SPECIALS.include?((letter.to_s + roman[index + 1].to_s).to_sym)
end
