class GeneticCodeError < StandardError
	def message
		'Detected a genetically modified organism!'
	end
end

class GEN
	attr_reader :gen

	def initialize (gen)
		@gen = gen.upcase
		raise GeneticCodeError if invalid?
	end

	def invalid?
		@gen !~ /\A[ACGTU]+[ACGTU]*\Z/
	end
end

class RNA < GEN
	def to_dna
		DNA.new(@gen.tr('U', 'T'))
	end

	def invalid?
		@gen !~ /\A[ACGU]+[ACGU]*\Z/
	end
end

class DNA < GEN
	def to_rna
		RNA.new(@gen.tr('T', 'U'))
	end

	def invalid?
		@gen !~ /\A[ACGT]+[ACGT]*\Z/
	end
end

class Canli

	attr_reader :genetic

	def initialize (genetic)
		@genetic = genetic if genetic.is_a? GEN
	end

	def is_DNA?
		@genetic.is_a? DNA
	end

	def is_RNA?
		@genetic.is_a? DNA
	end

end

denean = DNA.new("ACCGTTGC")
canli = Canli.new(denean)

puts canli.genetic.gen.class