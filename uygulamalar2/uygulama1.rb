(0..100).each do |sayi|
	if (sayi%3).zero? and (sayi%5).zero?
		p "cizbiz"
	elsif (sayi%3).zero?
		p "ciz"
	elsif (sayi%3).zero?
		p "biz"
	end
end