def topla sayi1, sayi2
	sayi1 + sayi2
end

def cikar sayi1, sayi2
	sayi1 - sayi2
end

def carp sayi1, sayi2
	sayi1 * sayi2
end

def bol sayi1, sayi2
	if sayi2.zero?
		return "Sayi 2 0 olamaz"
	end
	sayi1.to_f/sayi2
end
def bol_unless sayi1, sayi2
	unless sayi2.zero?
		return sayi1.to_f/sayi2
	end
	"Sayi 2 0 olamaz"
end

puts topla 3,5
puts cikar 58,12
puts carp 6,17
puts bol 78,0
puts bol 10,5
puts bol_unless 78,0
puts bol_unless 10,5