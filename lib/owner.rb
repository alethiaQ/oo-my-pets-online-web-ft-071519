class Owner

  attr_reader :name, :species
  attr_accessor
  @@all = []

  def initialize(name)
    @species = "human"
    @name = owner_name
    @@all << self
  end

  def say_species
    puts "I am a #{species}"
  end
  def self.all
    @@all
  end
  def self.count
    self.all.count {|person| person}
  end

  def self.reset_all
    self.all.clear
  end

  def buy_cat(name)
    cat = Cat.new(name, self.name)
    cat.owner = self
  end
  def buy_dog(name)
    dog = Dog.new(name, self.name)
    dog.owner = self
  end
end
