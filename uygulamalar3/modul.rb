module Ruby101
	DERS_ADI = "Ruby101"
	VERSION = "1.0.0"

	module Aydin
		def neredeyiz
			"Aydın"
		end
	end

	class Gun1
		def konular
			['String', 'Array']
		end
	end

	def bla
	end	
end

class Ders
	include Ruby101::Aydin
end

puts Ruby101::VERSION

gun1 = Ruby101::Gun1.new