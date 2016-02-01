require "./kisi"

class AdresDefteri

	def initialize
		@kisiler = []
	end

	def ekle (kisi)
		raise ArgumentError unless kisi.is_a? Kisi
		@kisiler << kisi
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
	end

	def liste
		@kisiler
	end
end