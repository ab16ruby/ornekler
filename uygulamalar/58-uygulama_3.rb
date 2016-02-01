require 'turkish_support'
using TurkishSupport

def kac_adet(samanlik, igne)
  " #{samanlik.upcase} ".split(igne.upcase).length - 1
end

loop do
	print "Aranacak Metin Giriniz: "
	cumle = gets.chomp

	redo if cumle.empty?

	print "Arama Giriniz: "
	ara = gets.chomp

	redo if ara.empty?

	puts "Verdiğiniz aranacak metin içinde \"#{kac_adet(cumle, ara)}\" adet \"#{ara}\" var!" 

	print "Programdan Çıkayım mı? (E/H): "
	break if gets.chomp.upcase == "E"
end