# # since we are not using ActiveRecord in this lab, you write a bare Ruby model (like you did in MOD1)
# class Puppy
#   attr_accessor :name, :breed, :age

#   def initialize(name, breed, age)
#     @name = name
#     @breed = breed
#     @age = age
    
#   end

# end

class Puppy

  @@all = []

  def self.all
      @@all
  end

  attr_accessor :name, :breed, :age

  def initialize(name, breed, age)
      @name = name
      @breed = breed
      @age = age
      self.save
  end

  def save
      @@all << self
  end

end

