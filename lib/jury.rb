class Jury
	attr_reader :members

	def initialize
		@members = []
	end

	def add_member(member)
		@members.push(member)
	end

	def members
		@members
	end

	def cast_votes(finalists)
		{}
	end
end