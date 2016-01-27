require_relative "kisi"

class AdresDefteri

  attr_reader :kisiler

  def initialize (dosya_adi)
    @dosya_adi = dosya_adi
    @kisiler = []
    kisileri_al
  end

  def ekle (kisi)
    fail ArgumentError unless kisi.is_a? Kisi
    @kisiler << kisi
  end

  def kaydet
    File.open(@dosya_adi, "w") do |dosya|
      @kisiler.each do |kisi|
        dosya.puts kisi.satir
      end
    end
  end

  private
  def kisileri_al
    if File.exist? @dosya_adi
      File.open(@dosya_adi, "r") do |dosya|
        dosya.readlines.each do |satir|
          @kisiler << Kisi.satir(satir.chomp)
        end
      end
    end
  end

end
