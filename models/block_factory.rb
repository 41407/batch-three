class Block_factory
	def get_random
		randomValue = Random.rand(4)
		Block.new(randomValue.to_s, ["forms_matches"])
	end
end