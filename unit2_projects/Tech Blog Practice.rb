Welcome.week_five

class DbcLocations
  def initialize(location1, location2, location3)
    @location1 = location1
    @location2 = location2
    @location3 = location3
  end
  
  def show
    puts @location1
    puts @location2
    puts @location3
  end
end

DbcLocations.new("San Francisco", "New York", "Chicago").show #this is an instance
DbcLocations.new("New Orleans", "Boston", "Los Angeles").show #this is another instance

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
old_family.number_members # => returns 5

new_family = FamilyWithNewBaby.new

new_family.number_members # => returns 6
old_family.number_members # => returns 6 (though used to be 5)