ifade1 = /.*\.$/
ifade2 = Regexp.new( '^[a-z]+$' )
ifade3 = %r{^[^a-z]+$}

puts ifade1.class, ifade2.class, ifade3.class   # Regexp

puts ifade1.match( "Bu bir cümledir." )         # Bu bir cümledir.
"Bu bir cümle değildir".match( ifade1 )         # => nil

ifade2 =~ "boşlukiçermeyenbirmetin"        # => nil
ifade2 =~ "boslukicermeyenbirmetin"        # 0

"Bu bir cumledir." =~ ifade2               # => nil
puts "kullanici@eposta.com" =~ /.@/        # 8
# !~

if "Sait F. Abasıyanık" =~ /\s[A-Z]\.\s/
  puts "Eşleşme bulundu"
  puts "Eşleşme: #{$&}"                   # Eşleşme:  F.
  puts "Eşleşmeden önce: #{$`}"           # Eşleşmeden önce: Sait
  puts "Eşleşmeden sonra: #{$'}"          # Eşleşmeden sonra: Abasıyanık
else
  puts "Eşleşme bulunamadı"
end

# Çok kullanılan bazı Regex'ler

# Renk kodlarını kontrol için çok yararlı
is_hex = /^#?([a-f0-9]{6}|[a-f0-9]{3})$/

# URL oluştururken string içinde sorun çıkaracak karakter olup olmadığını kontrol eder
is_slug = /^[a-z0-9-]+$/

# E-posta adresinin geçerliliğini kontrol eder
is_valid_email = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,12})$/

# URL'nin geçerliliğini kontrol eder
is_valid_url = /^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/

# IP adresinin geçerliliğini kontrol eder
is_valid_ip = /^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$/

# Youtube video ID'sini  almak için kullanabilir
def parse_youtube url
   regex = /(?:.be\/|\/watch\?v=|\/(?=p\/))([\w\/\-]+)/
   url.match(regex)[1]
end
