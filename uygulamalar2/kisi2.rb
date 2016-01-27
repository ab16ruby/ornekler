class Kisi
  def initialize(ad, soyad, yas)
    if ad.is_a?(String) && soyad.is_a?(String) && yas.is_a?(Numeric)
      @ad = ad
      @soyad = soyad
      @yas = yas
    else
      raise ArgumentError
    end
  end

  def detay
   "#{@ad} #{@soyad} - #{@yas}"
  end
end

class Ogrenci < Kisi
end

class Ogretmen < Kisi
  def initialize(ad, soyad, yas)
    super
    @ogrenciler = []
  end

  def ogrenci_ekle(ogr)
    if ogr.is_a? Ogrenci
      @ogrenciler << ogr
    else
      raise ArgumentError
    end
  end

  def ogrenciler
    @ogrenciler.each do |ogrenci|
      puts ogrenci.detay
    end
  end
end

ogretmen = Ogretmen.new("Umurcan", "Görür", 25)
ogrenci1  = Ogrenci.new("Sıtkı", "Bağdat", 35)
ogrenci2  = Ogrenci.new("Serdar", "Doğruyol", 26)

ogretmen.ogrenci_ekle(ogrenci1)
ogretmen.ogrenci_ekle(ogrenci2)
ogretmen.ogrenciler

# ogretmen.ogrenci_ekle(ogretmen)
ogrenci3  = Ogrenci.new(35, "Bağdat", 35) # !> assigned but unused variable - ogrenci3
# ~> -:8:in `initialize': ArgumentError (ArgumentError)
# ~>  from -:50:in `new'
# ~>  from -:50:in `<main>'
# >> Sıtkı Bağdat - 35
# >> Serdar Doğruyol - 26
