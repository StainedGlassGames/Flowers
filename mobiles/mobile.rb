class Mobile

	attr_reader :level

	attr_reader :hp
	attr_reader	:str
	attr_reader :dex
	attr_reader :int

	attr_reader :name
	attr_reader :description
	attr_reader :profile_picture

	def initialize
		@level ||= 1

		@str ||= 1
		@dex ||= 1
		@int ||= 1

		@profile_picture ||= [
			"    @@    ",
			"   @@@@   ",
			"  @ @@ @  ",
			" @  @@  @ ",
			"   @@@@   ",
			"  @@  @@  ",
			"  @@  @@  ",
			"  @@  @@  "
		]

		@hp = max_hp
	end

	def max_hp
		@str / 2 + 50
	end

	def describe
		puts ".--------------------------------------------------------\n"\
			 "| #{@name}\n"\
			 "| #{@description}\n"\
			 "| HP: #{@hp}/#{max_hp}\n"\
			 "| STR: #{@str} DEX: #{@dex} INT: #{@int}"
	end

	def hurt(amount)
		@hp -= amount
		die if @hp <= 0
	end

	def die
	end
end