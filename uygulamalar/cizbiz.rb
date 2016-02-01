def cizbiz (sayi)
	blk = block_given? ? yield(sayi) : false

	if blk
		"#{sayi} - köfte"
	else
		if (sayi%15).zero?
			"#{sayi} - cızbız"
		elsif (sayi%5).zero?
			"#{sayi} - bız"
		elsif (sayi%3).zero?
			"#{sayi} - cız"
		else
			sayi
		end
	end
end


(1..100).each { |sayi| puts cizbiz(sayi) { |i| (50%i).zero? } }