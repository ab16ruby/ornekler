require "json"
require "yaml"

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

		raise ArgumentError "Adi ve Soyadi Alani Zorunlu" if (veriler.is_a? Array and veriler.size < 2) or not veriler.is_a? Array

		kisi = Kisi.new(veriler[0], veriler[1])

		kisi.sehri = veriler[2]
		kisi.dtarih = veriler[3]
		kisi.telefon = veriler[4]
		kisi.eposta = veriler[5]

		kisi
	end

	def cikti
		block_given? ? yield(@adi, @soyadi, @sehri, @dtarih, @telefon, @eposta) : "#{@adi},#{@soyadi},#{@sehri},#{@dtarih},#{@telefon},#{@eposta}"
	end
end


umur = Kisi.new("Umurcan", "Görür", telefon: "05384319043")

# puts umur.adi
# puts umur.soyadi
# puts umur.cikti
# puts umur.cikti { |*veriler| veriler.to_json }
# puts umur.cikti { |*veriler| veriler.to_yaml }

basak = Kisi.girdi("Başak,Çakmaktepe,Ankara,30/04/1993,05225551111,basakcakmaktepe@gmail.com")
puts basak.adi
puts basak.telefon
puts basak.cikti