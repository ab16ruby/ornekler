def topla(sayi1, sayi2)
  sayi1.to_f + sayi2
end

def cikar(sayi1, sayi2)
  sayi1.to_f - sayi2
end

def carpma(sayi1, sayi2)
  sayi1.to_f * sayi2
end

def bolme(sayi1, sayi2)
  sayi1.to_f / sayi2
end

topla(3,5)    # => 8.0
cikar(3,5)    # => -2.0
carpma(3,5)   # => 15.0
bolme(3,5)    # => 0.6
