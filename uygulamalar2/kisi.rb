class Kisi
  @@kisi_sayisi = 0

  attr_accessor :ad, :soyad

  def initialize(ad, soyad)
    @ad, @soyad = ad, soyad
    @@kisi_sayisi += 1
  end

  def tam_ad
    "#{@ad} #{@soyad}"
  end

  def self.sayi
    @@kisi_sayisi
  end
end

kisi1 = Kisi.new('Umurcan', 'Görür') # => #<Kisi:0x007f7d9c7900b0 @soyad="Görür", @ad="Umurcan">

kisi1.ad # => "Umurcan"
kisi1.ad = "Dumur" # => "Dumur"

kisi1.tam_ad # => "Dumur Görür"

Kisi.sayi  # => 5

class Ogrenci < Kisi
end

class Ogretmen < Kisi
end
