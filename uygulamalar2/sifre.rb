KULLANICI_ADI = "ugorur"
SIFRE = "12345"

kullanici_adi = ""
sifre = ""

until kullanici_adi == KULLANICI_ADI && SIFRE == sifre
  print "Kullanıcı Adı: "
  kullanici_adi = gets.chomp
  print "Parola: "
  sifre = gets.chomp
end

print "Kullanıcı Adı: "
k_adi = gets.chomp
print "Parola: "
sif = gets.chomp

while k_adi != KULLANICI_ADI && SIFRE != sif
  print "Kullanıcı Adı: "
  k_adi = gets.chomp
  print "Parola: "
  sif = gets.chomp
end

puts "Merhaba Dünya"

loop do
  print "Kullanıcı Adı: "
  ka = gets.chomp
  print "Parola: "
  si = gets.chomp

  if ka == KULLANICI_ADI && si == SIFRE then break else puts "Parola Hatalı" end

end

puts "Merhaba Dünya"
