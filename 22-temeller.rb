# Değişkenler
metin = "Ruby"
sayi = 12
dizi = [1, 'iki', :uc]
puts metin # => Ruby
puts sayi # => 12
print dizi # => [1, 'iki', :uc]
 
# nil
bos = nil
puts bos # =>
metin.nil? # => false
bos.nil? # => true
 
# Mantıksal
dogru = [0, '', " ", "false", :nil]
yanlis = [nil, false]
 
for d in dogru+yanlis do
	puts !!d
end
 
# Metotlar
def selamla
	# return "Merhaba"
	"Merhaba"
end
 
puts selamla # => Merhaba
puts selamla() # => Merhaba
 
def selamla(isim= 'Dünya')
	# "Merhaba, #{isim}"
	"Merhaba, " + isim
end
 
puts selamla("Ali") # Merhaba, Ali
puts selamla # Merhaba, Dunya
 
def topla(d1, d2)
	d1 + d2
end
 
puts topla(3, 5) # 8
puts topla "Ayten ", "Kara" # Ayten Kara
print topla([1,2,3], ['Ali', 'Veli', 'Nuri']) # [1,2,3,'Ali','Veli','Nuri']
 
puts "\n-----------------------"
 
# - Kapsam ---------------------------
degisken = 10
puts "Değişkenin değeri: #{degisken}" # Değişkenin değeri: 10
 
def degistir(deger)
	degisken = deger
end
 
degistir(20)
puts "Değişkenin değeri: #{degisken}" # Değişkenin değeri: 10
 
degisken = degistir(20)
puts "Değişkenin değeri: #{degisken}" # Değişkenin değeri: 20 