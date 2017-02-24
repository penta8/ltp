class Integer
  def factorial(n = self)
    n == 0 || n == 1 ? n : n * factorial(n - 1)
  end
end
