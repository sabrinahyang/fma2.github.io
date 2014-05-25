class Family
	@@members = 0

	def initialize
		@@members = 5
	end
	def number_members
		puts @@members
	end
end

class FamilyWithNewBaby < Family
	def initialize
		@@members = 6
	end
end

old_family = Family.new
old_family.number_members
new_family = FamilyWithNewBaby.new

new_family.number_members
old_family.number_members