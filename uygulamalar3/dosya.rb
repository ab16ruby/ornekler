# File.open("adres_defteri", "a") do |dosya|
#   dosya.puts "Umurcan,Görür,05384319043,Eskişehir"
#   dosya.puts "Umurcan,Görür,05384319043,Eskişehir"
#   dosya.puts "Umurcan,Görür,05384319043,Eskişehir"
#   dosya.puts "Umurcan,Görür,05384319043,Eskişehir"
#   dosya.puts "Umurcan,Görür,05384319043,Eskişehir"
#   dosya.puts "Umurcan,Görür,05384319043,Eskişehir"
#   dosya.print "Umurcan,Görür,05384319043,Eskişehir"
# end

# class Kisi

#   attr_accessor :ad, :soyad, :tel, :sehir

#   def initialize(ad, soyad, tel, sehir)
#     if ad.is_a?(String) && soyad.is_a?(String) && tel.is_a?(Numeric)
#       @ad = ad
#       @soyad = soyad
#       @tel = tel
#       @sehir = sehir
#     else
#       raise ArgumentError
#     end
#   end

#   def to_s
#     "#{@ad} #{@soyad} (#{sehir}) - #{@tel}"
#   end
# end

# kisiler = []

# File.open("adres_defteri", "r") do |dosya|
#   dosya.readlines.each do |satir|
#     ad, soyad, tel, sehir = satir.split(",")
#     kisiler << Kisi.new(ad, soyad, tel.to_i, sehir.chomp)
#   end
# end

# kisiler.each do |kisi|
#   puts kisi.ad
#   puts kisi.tel
#   puts kisi.sehir
# end


# kisi = Kisi.new(ad, soyad)

# kisi.satir

# # "Umurcan,Görür,05384319043,Eskişehir"

# kisi.save

# kisi = Kisi.satir(satir)

# def self.satir(satir)

# end

# kisiler = Kisi.read

# private kisi.yas_hesapla

# kisi.ad
# kisi.soyad
# kisi.yas
# kisi.sehir
# kisi.dtarihi
# kisi.tel
# kisi.eposta




# isim = String.new()
# zaman = Time.new()

