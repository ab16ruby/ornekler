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

  def self.satir(satir)
    self.new(satir.split(","))
  end

  def yas
    yas_hesapla
  end

  private
  def yas_hesapla
    simdi = Date.today
    dtarih = Date.parse(@dtarih)
    fark_gun = (simdi - dtarih).to_i
    fark_gun/365
  end

end
