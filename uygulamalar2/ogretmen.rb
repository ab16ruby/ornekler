require "turkish_support"
using TurkishSupport

class Kisi

  attr_reader :ad, :soyad, :yas

  def initialize (ad, soyad, yas)
    raise ArgumentError unless valid_ad? ad
    raise ArgumentError unless valid_ad? soyad
    raise ArgumentError unless valid_yas? yas
    @ad, @soyad, @yas = ad, soyad, yas
  end

  def ad= (ad)
    raise ArgumentError unless valid_ad? ad
    @ad = ad
  end

  def soyad= (soyad)
    raise ArgumentError unless valid_ad? soyad
    @soyad = soyad
  end

  def yas= (yas)
    raise ArgumentError unless valid_yas? yas
    @yas = yas
  end

  def valid_ad? (kelime)
    kelime.downcase =~ /[a-zıçşğüö ]+/
  end

  def valid_yas? (sayi)
    sayi.is_a? Integer || sayi.to_s =~ /[0-9]+/
  end
end

class Ogrenci < Kisi
end

class Ogretmen < Kisi

  def initialize (ad, soyad, yas)
    super
    @ogrenciler = []
  end

  def ogrenci_ekle (ogrenci)
    @ogrenciler << ogrenci if ogrenci.is_a? Ogrenci
  end

  def ogrencileri_yazdir
    i = 0
    @ogrenciler.each do |ogrenci|
      puts "#{i.next} -> #{ogrenci.ad} #{ogrenci.soyad} (#{ogrenci.yas})"
    end
  end

end

ogretmen = Ogretmen.new("Sıtkı", "Bağdat", 80)
