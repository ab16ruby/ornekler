require "turkish_support"
using TurkishSupport

def palindrom? kelime
	kelime.upcase!.gsub!(/\W/, '')
	kelime == kelime.reverse
end

loop do
	print "Cümle giriniz: "
	kel = gets.chomp

	puts palindrom? kel
end