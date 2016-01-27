# Sayılar
 
# Fixnum
tamsayi = 15
negatif_tamsayi = -15
tamsayi.class # => Fixnum
negatif_tamsayi.class # => Fixnum
 
binary = 0b10101010 # => 170
hexadecimal = 0xABCDEF # => 11259375
octal = 0123 # => 83
hexadecimal.class # => Fixnum
octal.class # => Fixnum
 
 
binary # => 170
hexadecimal # => 11259375
octal # => 83
 
binary.to_s(8) # => "252"
 
# true/false ?
binary == 170 # => true
binary == 0252 # => true
binary == 0XAA # => true
 
# Bignum
buyuk_tamsayi = 100000000000000 # 100_000_000_000_000
buyuk_tamsayi.class # => Fixnum
 
tamsayi.class.superclass # => Integer
buyuk_tamsayi.class.superclass # => Integer
 
# Float
ondalikli = 3.14156
ondalikli.class # => Float
 
# Duyarlılık: 15
PI = 3.14159265358979323846264338327950 # => 3.141592653589793
 
# Yuvarlama Problemi
0.33 * 10 # => 3.3000000000000003
 
# Çözüm
require "bigdecimal" # => true
(BigDecimal("0.33")*10).to_f # => 3.3
 
 
# Bilimsel Gösterim
bilimsel = 1.0e7 # => 10000000.0 # !> assigned but unused variable - bilimsel
# bilimsel = 1.e7 # => NoMethodError
 
# Rasyonel
rasyonel = Rational(3, 2) # => (3/2)
puts rasyonel # 3/2
 
# Hatalı Kullanım
rasyonel = Rational(1/2) # (0/1)
# Geçerli Kullanım
rasyonel = Rational("1/2") # (1/2)
 
# Karmaşık Sayılar
karmasik = Complex(3,5) # => (3+5i)
Complex("3-2i") # => (3-2i)
Complex("3-2i") * Complex(1,3) # => (9+7i)
 
# Tip Dönüşümleri
# num.to_i || Integer(num)
# num.to_f || Float(num)
# num.to_r || Rational(num)
# num.to_c || Complex(num)
 
# Otomatik tip dönüşümü
# Float + Integer = Float
puts 15.0 + 2 # 17.0
 
# Float + Rational = Float
12.3 + Rational(3,4) # => 13.05
 
# Integer +Rational = Rational
12 + Rational(3,4) # => (51/4)
 
# Float + Complex = Complex
# Integer + Complex = Complex
# Rational + Complex = Complex
12.3 + Complex(3,4) # => (15.3+4i)
12 + Complex(3,4) # => (15+4i) 