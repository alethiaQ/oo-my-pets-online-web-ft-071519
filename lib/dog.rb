class Dog
attr_reader :name
attr_accessor :owner, :mood
@@all = []

def initialize(name, owner)
  @name = name
  @owner = owner
  @mood = "mood"
  @@all << self
end

end
