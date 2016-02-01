require "./kisi"

class AdresDefteri

	def initialize
		@kisiler = []
		oku
	end

	def ekle (kisi)
		raise ArgumentError unless kisi.is_a? Kisi
		@kisiler << kisi
		kaydet
	end

	def kisi_sayisi
		@kisiler.size
	end

	def ada_gore_ara (adi)
		@kisiler.select { |kisi| kisi.adi.upcase.include? adi.upcase }
	end

	def soyada_gore_ara (soyadi)
		@kisiler.select { |kisi| kisi.soyadi.upcase == soyadi.upcase }
	end

	def sil (kisi)
		raise ArgumentError unless kisi.is_a? Kisi
		@kisiler.delete(kisi)
		kaydet
	end

	def liste
		@kisiler
	end

	private

	def kaydet
		if File.writable? "defter.db"
			File.open("defter.db", "w") do |dosya|
				@kisiler.each { |kisi| dosya.puts kisi.cikti }
			end
		end
	end

	def oku
		if File.exist? "defter.db" and File.readable? "defter.db"
			File.open("defter.db") do |dosya|
				dosya.readlines.each { |satir| @kisiler << Kisi.girdi(satir) unless satir.empty? }
			end
		end
	end

end