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

  def sayi
    @@kisi_sayisi
  end

  def self.sayi
    @@kisi_sayisi
  end

  def self.virgul_new (virgullu)
    ad, soyad, * = block_given? ? yield(virgullu) : virgullu.split(',')
    Kisi.new(ad, soyad)
  end
end

kisi1 = Kisi.new('Umurcan', 'Görür')
kisi2 = Kisi.new('Ahmet', 'Görür')
kisi3 = Kisi.new('Mehmet', 'Görür')

puts kisi1.sayi
puts Kisi.sayi

kisi4 = Kisi.virgul_new('corç,Görür')
kisi5 = Kisi.virgul_new('Ayşe,Görür')
kisi6 = Kisi.virgul_new('Ayşe|Görür') { |veri| veri.split('|') }

kisi1.ad # => "Umurcan"
kisi1.ad = "Dumur" # => "Dumur"

kisi1.tam_ad # => "Dumur Görür"

puts kisi1.sayi

puts Kisi.sayi  # => 5

puts kisi6.tam_ad

class Ogrenci < Kisi
end

class Ogretmen < Kisi
end
