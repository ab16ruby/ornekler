sayi1 = -8 # => -8
sayi2 = 1.39 # => 1.39
 
sayi1.abs # => 8
 
sayi1.even? # => true
sayi1.odd? # => false
 
sayi1.zero? # => false
sayi1.nil? # => false
 
sayi2.round # => 1
sayi2.ceil # => 2
sayi2.floor # => 1
 
sayi2.finite? # => true
sayi2.infinite? # => nil
 
# Integer/0 # => ZeroDivisionError
# Float/0 # => Infinity
sayi3 = 1.0/0 # => Infinity
sayi4 = -1.0/0 # => -Infinity
sayi3.finite? # => false
sayi4.finite? # => false
sayi3.infinite? # => 1
sayi4.infinite? # => -1 