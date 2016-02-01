class Kisi
	attr_accessor :adi, :soyadi, :sehri, :dtarih, :telefon, :eposta

	def initialize (adi, soyadi, **params)
		@adi, @soyadi = adi, soyadi
		@sehri = params[:sehri] if params.include? :sehri
		@dtarih = params[:dtarih] if params.include? :dtarih
		@telefon = params[:telefon] if params.include? :telefon
		@eposta = params[:eposta] if params.include? :eposta
	end

	def self.girdi(veri)
		veriler = block_given? ? yield(veri) : veri.split(',')

		raise ArgumentError if not (veriler.is_a? Array) or (veriler.is_a? Array and veriler.size < 2)

		kisi = Kisi.new(veriler[0], veriler[1])

		kisi.sehri = veriler[2]
		kisi.dtarih = veriler[3]
		kisi.telefon = veriler[4]
		kisi.eposta = veriler[5]

		kisi
	end

	def cikti
		veriler = [@adi, @soyadi, @sehri, @dtarih, @telefon, @eposta]
		block_given? ? yield(*veriler) : veriler.join(',')
	end

	def ad_soyad
		"#{@adi} #{@soyadi}"
	end
end