class Kisi
  attr_reader :soyad #getter
  attr_accessor :ad, :yas #getter, setter
  attr_writer :gobek #setter

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
   "#{@ad}#{' "'<<@gobek<<'"' unless @gobek.nil?} #{@soyad} - #{@yas}"
  end
end

kisi = Kisi.new("Umur", "Görür", 26)
kisi.ad = "Umurcan"
kisi.gobek = "ugorur"
puts kisi.soyad
puts kisi.ad

puts kisi.detay