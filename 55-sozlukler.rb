sozluk = {}
sozluk.class    # => Hash

sozluk = Hash.new
sozluk[:ad]    = "Ali"
sozluk[:soyad] = "Kara"
sozluk      # => {:ad => "Ali", :soyad => "Kara"}

sozluk = {ad: "Ayten", soyad: "Pak"}
sozluk = {'ad' => "Ayten", 'soyad' => "Pak"}

puts "#{sozluk['ad']} #{sozluk['soyad']}"   # => Ayten Pak
sozluk['yas']   # => nil

sozluk = Hash.new("varsayılan")
sozluk['yas']   # => "varsayılan"

ruby101 = {
  egitmen: [
  	"Sıtkı Bağdat",
  	"Umurcan Görür"
  ],
  katilimcilar: [
    "Ali Kara",
    "Veli Ak",
    "Ayten Pak",
    "Nuran Çak"
  ],
  etkinlik: "Akademik Bilişim",
  tarih: "31 Ocak - 03 Şubat 2015"
}

puts "#{ruby101[:tarih]} tarihinde #{ruby101[:etkinlik]} etkinliğinde,
#{ruby101[:egitmen][0]} ve #{ruby101[:egitmen][1]} ile birlikte Ruby öğrenen #{ruby101[:katilimcilar].size} kişiydik."
# >> 31 Ocak - 03 Şubat 2015 tarihinde Akademik Bilişim etkinliğinde,
# >> Sıtkı Bağdat ve Umurcan Görür ile birlikte Ruby öğrenen 4 kişiydik.

ruby101.keys      # => [:egitmen, :katilimcilar, :etkinlik, :tarih]
ruby101.values    # => [["Sıtkı Bağdat", "Umurcan Görür"], ["Ali Kara", "Veli Ak", "Ayten Pak", "Nuran Çak"], "Akademik Bilişim", "31 Ocak - 03 Şubat 2015"]

ruby101.fetch(:egitmen)   # => ["Sıtkı Bağdat", "Umurcan Görür"]
ruby101.fetch(:falan)     # => KeyError: key not found
ruby101[:falan]           # => nil

ruby101.include? :tarih   # => true
ruby101.include? :saat    # => false

# Sözlüklerin Birleştirilmesi
h1 = {ad: "Ali", soyad: "Kara"}
h2 = {adres: "Falan sk. Filan Apt. 3/5 Ankara"}
h1.merge h2     # => {:ad=>"Ali", :soyad=>"Kara", :adres=>"Falan sk. Filan Apt. 3/5 Ankara"}

h3 = {ad: "Ayten"}
h1.merge h3   # => {ad: "Ayten", soyad: "Kara"}
h1.merge h1   # => {ad: "Ali", soyad: "Kara"}

# Diziden sözlüğe dönüştürme
[["a",1],["b",2]].to_h    # => {"a"=>1, "b"=>2}
