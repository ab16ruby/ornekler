def parcali_fonksiyon (x)
  if block_given? && (x > 0 || x**2 == 16)
    yield (x)
  else
    x.abs ** 3
  end
end

parcali_fonksiyon(0) # => 0
parcali_fonksiyon(20) # => 8000
parcali_fonksiyon(-5) # => 125
parcali_fonksiyon(3) { |x| x**2 } # => 9
parcali_fonksiyon(-3) { |x| x**2 } # => 27
parcali_fonksiyon(1) { |x| 5*(x**2) + 3*x + 7 } # => 15
parcali_fonksiyon(-4) { |x| x**2 } # => 16
