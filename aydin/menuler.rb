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

		def kisi_liste kisiler
			i = 0
			kisiler.each { |kisi| puts "#{i = i.next}) #{kisi.ad_soyad}" }
		end

		def ad
			print "Lütfen kişinin adını giriniz: "
			gets.chomp
		end

		def soyad
			print "Lütfen kişinin soy adını giriniz: "
			gets.chomp
		end

		def sehir
			print "Lütfen kişinin şehrini giriniz: "
			gets.chomp
		end

		def dtarih
			print "Lütfen kişinin doğum tarihini giriniz: (GG/AA/YYYY) "
			gets.chomp.split('/').reverse.join('-')
		end

		def telefon
			print "Lütfen kişinin telefon numarasını giriniz: "
			gets.chomp
		end

		def eposta
			print "Lütfen kişinin e-posta adresini giriniz: "
			gets.chomp
		end

		def liste? secim
			["E", "G"].include? secim
		end

		def ana? secim
			["E", *"1".."4"].include? secim
		end

		def ad? secim
			not (secim.nil? or secim.empty? or !!secim.match(/[0-9]/))
		end

		def soyad? secim
			not (secim.nil? or secim.empty? or !!secim.match(/[0-9]/))
		end

		def sehir? secim
			not secim.nil?
		end

		def dtarih? secim
			secim.nil? ? false : (secim.empty? ? true : !!secim.match(/^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/))
		end

		def telefon? secim
			secim.nil? ? false : (secim.empty? ? true : !!secim.match(/[0-9]+/))
		end

		def eposta? secim
			secim.nil? ? false : (secim.empty? ? true : !!secim.match(/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,12})$/))
		end
	end
end