class GeneticCodeError < StandardError
	def message
		'Detected a genetically modified organism!'
	end
end

class GEN
	def initialize (gen)
		@gen = gen.chars.upcase
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
		raise GeneticCodeError if invalid?
	end
end

class DNA < GEN
	def to_rna
		RNA.new(@gen.tr('T', 'U'))
	end

	def invalid?
		@gen !~ /\A[ACGT]+[ACGT]*\Z/
		raise GeneticCodeError if invalid?
	end
end