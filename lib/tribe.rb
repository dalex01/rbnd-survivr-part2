class Tribe
	attr_accessor :members
	attr_reader :name

	def initialize(options={})
		@name = options[:name]
		@members = options[:members]
		puts "Tribe #{name} created"
	end

	def to_s
		@name
	end

	def tribal_council(to_eliminate)
		@members.each {|member| return member if member != to_eliminate[:immune]}
	end
end