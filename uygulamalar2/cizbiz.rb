print "Sayı Giriniz: "
sayi = gets.chomp.to_i

if (sayi%3).zero? && (sayi%5).zero?
  puts "Cızbız"
elsif (sayi%3).zero?
  puts "Cız"
elsif (sayi%5).zero?
  puts "Bız"
end

puts case 0
    when sayi%15 then "Cızbız"
    when sayi%5 then "Bız"
    when sayi%3 then "Cız"
end
