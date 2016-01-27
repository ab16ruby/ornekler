require "date"

class Kisi

  attr_accessor :ad, :soyad, :sehir, :dtarih, :tel, :eposta

  def initialize (veriler)
    fail ArgumentError unless veriler.is_a? Array
    @ad, @soyad, @sehir, @dtarih, @tel, @eposta = *veriler
  end

  def satir
    "#{@ad},#{@soyad},#{@sehir},#{@dtarih},#{@tel},#{@eposta}"
  end

  def kaydet
    File.open("adres_defteri", "a") do |dosya|
        dosya.puts satir
    end
  end

  def self.satir(satir)
    self.new(satir.split(","))
    # dizi = satir.split(",")
    # dizi[0] = ad
    # dizi[1] = soyad
  end

  def yas
    yas_hesapla
  end

  # kisi = Kisi.new(["umur", "görür"...])
  # kisi.satir
  # kisi.kaydet

  # kisi = Kisi.satir("Umurcan,Görür...")

  def self.kisiler
    kisiler = []
    File.open("adres_defteri", "r") do |dosya|
      dosya.readlines.each do |satir|
        kisiler << self.satir(satir.chomp)
      end
    end
    kisiler
  end

  private
  def yas_hesapla
    simdi = Date.today
    dtarih = Date.parse(@dtarih)
    fark_gun = (simdi - dtarih).to_i
    fark_gun/365
  end

end

isim1 = Kisi.new(["Başak", "Çakmaktepe", "Ankara", "30/04/1993", "05225551111", "basakcakmaktepe@gmail.com"])

puts isim1.ad
puts isim1.yas
puts isim1.satir

isim2 = Kisi.new(["Mehmet","Yüksel","İzmir","16/10/1993","05484457488","mehmetyuksel@gmail.com"])

puts isim2.ad
puts isim2.yas
puts isim2.satir

# isim1.kaydet
# isim2.kaydet

Kisi.kisiler.each do |kisi|
  puts "#{kisi.ad} #{kisi.soyad} (#{kisi.yas} - #{kisi.sehir}) - #{kisi.tel} <#{kisi.eposta}>"
end
