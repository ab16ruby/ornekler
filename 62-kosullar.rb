puts "İşlem seçiniz"
puts "Toplama için +"
puts "Çıkarma için -"
puts "Çarpma için *"
puts "Bölme için /"

islem = gets.chomp

print "Sayı 1 "
sayi1 = gets.chomp.to_f

print "Sayı 2 "
sayi2 = gets.chomp.to_f

def topla(sayi1, sayi2)
  unless sayi1.is_a? Integer
    return "Hata Sayı 1 Integer olmalı"
  end

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

puts case islem
  when "+" then topla(sayi1, sayi2)
  when "-" then cikar(sayi1, sayi2)
  when "*" then sayi1.to_f * sayi2
  when "/" then bolme(sayi1, sayi2)
  else "Bu işlemi bilemedim"
end
