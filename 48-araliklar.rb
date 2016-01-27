puts (1..10).class # Range
puts (1...10).to_a.inspect # [1, 2, 3, 4, 5, 6, 7, 8, 9]
 
puts ('a'..'z').to_a.inspect # ["a", "b", "c", "d", "e", ..., "y", "z"]
puts ('aa'..'az').to_a.inspect # ["aa", "ab", "ac", "ad", "ae", "af", ..., "ay", "az"]
 
aralik = (2..8)
puts aralik.to_a.inspect # [2, 3, 4, 5, 6, 7, 8]
 
puts aralik.include? 7 # true
puts aralik.min # 2
puts aralik.max # 8
 
aralik.each {|i| puts "Değer: #{i}" if i > 4}
# Değer: 5
# Değer: 6
# Değer: 7
# Değer: 8
 
aralik2 = aralik.reject {|v| (v % 2) == 0}
puts aralik2.inspect # [3, 5, 7]
puts aralik2.class # Array
 
harfler = ('a'..'z')
sesli = %w{a e i o u}
sessiz = harfler.reject {|letter| sesli.include?( letter )}
puts sessiz.inspect
 
sessiz.each {|ch| puts ch if (ch == 'c')..(ch == 'm')}
 
puts (0..9).include?( 5 ) # true
puts (0..9) === 5 # true 