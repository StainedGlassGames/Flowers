require_relative "mobile.rb"

class Humanoid < Mobile
	attr_reader :profile_picture

	def initialize
		@profile_picture = [
			"    @@    ",
			"   @@@@   ",
			"  @ @@ @  ",
			" @  @@  @ ",
			"   @@@@   ",
			"  @@  @@  ",
			"  @@  @@  ",
			"  @@  @@  "
		]
		super
	end
end

class Orc < Humanoid
	def initialize
		super
		@name = "an orc"
		@description = "A horrible orc!"
		@str, @dex, @int = 10, 5, 1
		@profile_picture = [
			"  ______  ",
			" /      \\ ",
			"| @    @ |",
			"|        |",
			"|   ^^   |",
			"| ______ |",
			"| VV  VV |",
			" \\______/ "
		]
		@hp = max_hp
	end
end

class Drow < Humanoid
	def initialize
		super
		@name = "a drow"
		@description = "A dark elf, fast, cunning and cruel."
		@str, @dex, @int = 3, 5, 5
	end
end