class A
  def initialize
    puts "A sınıfından bir nesne oluşturuluyor"
  end

  def metot
    puts "A sınıfı metodu"
  end
end

class B < A
  def initialize (param1)
  	puts param1
  	super()
    puts "B sınıfından bir nesne oluşturuluyor"
  end

  def metot
    puts "B sınıfı metodu"
    super
  end
end


B.new("asd").metot