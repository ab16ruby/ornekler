dizi = [1,2,3]
dizi.class # => Array
 
dizi = Array.new(3) # => [nil, nil, nil]
 
dizi = Array.new(3, 'x') # => ["x", "x", "x"]
dizi.first.upcase!
dizi # => ["X", "X", "X"]
 
dizi = Array.new(3) {'x'} # => ["x", "x", "x"]
dizi.first.upcase!
dizi # => ["X", "x", "x"]
 
dizi = ["A", "B", "C", "D"]
dizi[0] # => "A"
dizi.first # => "A"
dizi[3] # => "D"
dizi.last # => "D"
dizi[-1] # => "D"
dizi[-2] # => "C"
 
# Aralık
dizi[1..3] # => ["B", "C", "D"]
dizi[1...3] # => ["B", "C"]
dizi[3..5] # => ["D"]
dizi[0..-1] # => ["A", "B", "C", "D"]
 
# başlangıç, adet
dizi[0,2] # => ["A", "B"]
dizi[0,5] # => ["A", "B", "C", "D"]
dizi[4,0] # => []
dizi[5,0] # => nil
 
# Ekleme/Çıkarma
dizi[4] = "E"
dizi << "F"
dizi.push "G"
puts dizi.inspect # => ["A", "B", "C", "D", "E", "F", "G"]
 
dizi.pop # => "G"
puts dizi.inspect # => ["A", "B", "C", "D", "E", "F"]
 
dizi.unshift "X"
puts dizi.inspect # => ["X", "A", "B", "C", "D", "E", "F"]
 
dizi.shift # => "X"
puts dizi.inspect # => ["A", "B", "C", "D", "E", "F"]
dizi.shift(3) # => ["A", "B", "C"]
puts dizi.inspect # => ["D", "E", "F"]
 
# Farklı tanımlamalar
gunler = ["pzt", "sal", "çar", "per", "cum", "cmt", "paz"]
gunler = %w(pzt sal çar per cum cmt paz)
 
renkler = %w/mavi açık\ mavi sarı açık\ sarı/
renkler[1] # => "açık mavi"
 
dizi = %W(1 2 #{1+2}) # ["1", "2", "3"]
 
semboller = %i*ali veli nuri*
puts semboller.inspect # => [:ali, :veli, :nuri]
 
# iç içe diziler
dizi = Array.new
dizi[0] = ["A"]
dizi[0][1] = ["B"]
dizi[0][1][1] = ["C", "D"]
dizi # => [["A", ["B", ["C", "D"]]]]
 
require "yaml"
puts dizi.to_yaml
# ---
# - - A
# - - B
# - - C
# - D
 
# Küme İşlemleri
dizi1 = [1, 2, 3, 4, 5]
dizi2 = [3, 5, 8]
 
dizi1 + dizi2 # => [1, 2, 3, 4, 5, 3, 5, 8]
dizi1 - dizi2 # => [1, 2, 4]
dizi1 & dizi2 # => [3, 5]
dizi1 | dizi2 # => [1, 2, 3, 4, 5, 8]
 
# Splat - Emici Operatör
a, b = [1,2,3,4,5]
a # => 1
b # => 2
 
a, *b = [1,2,3,4,5]
a # => 1
b # => [2,3,4,5]
 
c = [*1..10] # => [1,2,3,4,5,6,7,8,9,10] 