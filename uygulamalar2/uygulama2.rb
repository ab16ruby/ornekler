p "Lütfen yapacağınız işlemi giriniz \nToplama: 1\nÇıkarma: 2\nÇarpma: 3\nBölme: 4\n"
islem = gets.chomp.to_i
p "Lütfen yapacağınız işlemi yapacağınız ilk sayıyı giriniz:"
sayi1 = gets.chomp.to_f
p "Lütfen yapacağınız işlemi yapacağınız ikinci sayıyı giriniz:"
sayi2 = gets.chomp.to_f

puts case islem
	when 1 then sayi1 + sayi2
	when 2 then sayi1 - sayi2
	when 3 then sayi1 * sayi2
	when 4 then sayi1 / sayi2
end