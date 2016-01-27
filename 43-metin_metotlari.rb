m1 = "Akademik Bilişim"
m2 = "Ruby 101"

puts m1.length # 16
m2.include? "Ruby" # true
m2.include? "ruby" # false

metin = "Ruby 101"
aranan = "ruby"
metin.downcase.include? aranan.downcase # true

m2.start_with? "Ruby" # => true
m2.end_with? "1" # => true
m2.index 'Ru' # => 0
m2.index '1' # => 5

puts m2.downcase # ruby 101
puts m2.upcase # RUBY 101
puts m2.swapcase # rUBY 101

puts m1.upcase # AKADEMIK BILIşIM

# Turkish Support
# https://github.com/sbagdat/turkish_support
# gem install turkish_support
require 'turkish_support'
using 'turkish_support'
puts m1.upcase # => AKADEMİK BİLİŞİM

# Unicode Utils
# https://github.com/lang/unicode_utils
# gem install unicode_utils
require 'unicode_utils'
puts UnicodeUtils.upcase(m1, :tr) => AKADEMİK BİLİŞİM

puts m2.reverse # => 101 ybuR

metin = "Bu yıl Akademik Bilişim'de Ruby rüzgarları esiyor"
puts metin.split.inspect #["Bu", "yıl", "Akademik", "Bilişim'de", "Ruby", "rüzgarları", "esiyor"]

metin = "metin metin"
metin.sub "m", "ç" # => "çetin metin"
metin.gsub "m", "ç" # => "çetin çetin"
metin.tr "m", "ç" # => "çetin çetin"

metin.match /eti/ # => eti
metin.match /saray/ # => nil
metin =~ /eti/ # => 1
