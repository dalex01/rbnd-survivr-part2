class Game
	attr_reader :tribes

	def initialize(tribeA, tribeB)
		@tribes = []
		@tribes.push(tribeA)
		@tribes.push(tribeB)
	end

	def add_tribe(new_tribe)
		@tribes.push(new_tribe)
	end

	def immunity_challenge
		@tribes[rand(2)]
	end

	def clear_tribes
		@tribes = []
	end

	def merge(name)
		members = []
		@tribes.each {|tribe| members += tribe.members}
		Tribe.new({name: name, members: members})
	end

	def individual_immunity_challenge
		@tribes[0].members[0]
	end
end