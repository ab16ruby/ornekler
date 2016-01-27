require "_dosya_"

# Bu şekilde çağırıldığında Ruby ENV['PATH'] içinde tanımlı yollarda dosyanızı arayacaktır. Benim için bunlar:
#  /home/ugorur/.rbenv/versions/2.1.5/bin/_dosya_.rb
#  /home/ugorur/.rbenv/libexec/_dosya_.rb
#  /home/ugorur/.rbenv/plugins/ruby-build/bin/_dosya_.rb
#  /home/ugorur/.rbenv/shims/_dosya_.rb
#  /home/ugorur/.rbenv/bin/_dosya_.rb
#  /usr/local/sbin/_dosya_.rb
#  /usr/local/bin/_dosya_.rb
#  /usr/sbin/_dosya_.rb
#  /usr/bin/_dosya_.rb
#  /sbin/_dosya_.rb
#  /bin/_dosya_.rb
#  /usr/games/_dosya_.rb
#  /usr/local/games/_dosya_.rb
# İlk bulduğu dosyayı içeri çekecektir.