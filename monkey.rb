require 'turkish_support'

class String
	def palindrom?
  		string = self.upcase.gsub(/\W/, '')
  		string == string.reverse
	end
end

class String
	def tersine
		self.reverse
	end
	def büyüt
		self.upcase
	end
	def küçült
		self.upcase
	end
end

class Kisi
	using TurkishSupport


end

puts "umur".küçült