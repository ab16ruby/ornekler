# Metinler
metin = "Merhaba"
metin = 'Merhaba'
puts metin.class      # String

metin = %q<Merhaba>   # 'Merhaba'
metin = %Q{Merhaba}   # "Merhaba"
metin = %(Merhaba)    # "Merhaba"
metin = String.new("Merhaba")

puts  "Kon'nichi wa!"        # Kon'nichi wa!
metin = %*Merhaba "Ruby"*    # => "Merhaba \"Ruby\""
puts metin                   # Merhaba "Ruby"

puts "\tAd\tSoyad\tE-posta"
puts "\tAli\tKara\takara@gmail.com"
puts "\tAyşe\tAk\taak@gmail.com"
puts '\tVeli\tÇak\tvcak@gmail.com'

uzun_ifade = "Ben uzun bir ifadeyim
bu ruby
dosyasında..."    # => "Ben uzun bir ifadeyim\nbu ruby\ndosyasında..."

uzun_ifade = "Ben uzun bir ifadeyim \
bu ruby \
dosyasında..."    # => "Ben uzun bir ifadeyim bu ruby dosyasında..."

# Karakter Sabitleri
"\x100"   # => "@"
"\40"     # => "@"

?a      # "a"
?z      # "z"

# Metin içerisine kod gömme
$ad = "ali"
$soyad = "kara"
puts "Merhaba, benim adım #{$ad.capitalize} #{$soyad.upcase}"

puts "Metinler içerisine her şeyi gömebiliriz; şuna bak: \
#{def isim
  $ad.capitalize + " " + $soyad.upcase
  end} benim adım #{isim}"

# Heredoc
metin = <<FALAN
  Ben uzun bir metinim,
  İstediğin kadar sey ekleyebilirsin
  #{$ad} #{$soyad}
FALAN

p metin

metin = <<-FILAN
           Ben uzun bir metinim,
           İstediğin kadar sey ekleyebilirsin
           #{$ad} #{$soyad}
           FILAN