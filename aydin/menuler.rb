class Menuler
	class << self
		def ana
			print `clear`
			puts "Merhaba, Adres defterinize hoş geldiniz."
			puts "---"
			puts "Lütfen menüden bir seçenek seçiniz:"

			puts "1) Adres Defterinizi Listeleyiniz"
			puts "2) Yeni Kayıt Ekleyin"
			puts "3) Adında Arayın"
			puts "4) Soyadında Arayın"

			puts "---"
			puts "Çıkmak için E yazın"
			puts "---"
			print "Seçiminiz: "

			gets.chomp.upcase
		end

		def liste
			puts "---"
			puts "Çıkmak için E, Ana Menu için G yazınız"
			puts "---"
			print "Seçiminiz: "

			gets.chomp.upcase
		end

		def liste? secim
			["E", "G"].include? secim
		end

		def ana? secim
			["E", *"1".."4"].include? secim
		end
	end
end