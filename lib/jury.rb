class Jury
	attr_accessor :members

	def initialize
		@members = []
	end

	def add_member(member)
		@members.push(member)
	end

	def cast_votes(finalists)
		# create finalists hash and fill it with 0 values
		finalists_hash = {}
		finalists.each {|finalist| finalists_hash[finalist] = 0}

		# puts each member
		@members.each {|member| puts "Member: #{member}"}

		# vote for finalists
		keys = finalists_hash.keys
		@members.each {|member| finalists_hash[keys[rand(2)]] += 1}

		# return result
		finalists_hash
	end

	def report_votes(final_votes)
		final_votes.each {|key, value| puts "Finalist #{key}: #{value}"}
	end

	def announce_winner(final_votes)
		winner = final_votes.max_by{|key, value| final_votes[key]}[0]
		puts "The winner iiiiis: #{winner}"
		winner
	end
end