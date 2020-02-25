require 'pry'
class Owner

  attr_reader :species, :name
  @@all = []

  def initialize(name)
    @name = name 
      @species = "human"
     
      save
  end 

  def say_species
    p "I am a human."
  end
  def save 
    @@all << self 
  end
  
  def self.all 
    @@all
  end

  def self.count 
    @@all.length
end

  def self.reset_all
  @@all.clear
  end
  
  def cats 
    Cat.all.select do |c| #binding.pry
      c.owner == self
                  end
  end
    def dogs
       Dog.all.select do |d| #binding.pry
        
        d.owner == self
         end 
    end
    
   def buy_cat(name)
    Cat.new(name, self)
  end
  def buy_dog(name)
    Dog.new(name, self)
  end
  def walk_dogs
    Dog.all.each do |x| x.mood = "happy"
  end
end

  def feed_cats
    Cat.all.each do |e| e.mood = "happy"
  end
end

def sell_pets 
  Dog.all.each do |b| 
    if dog.owner == self 
      dog.mood = "nervous" 
      dog.owner = nil 
    end 
  end 
   Cat.all.each do |c|
     if cat.owner == self 
       cat.mood = 'nervous'
       dog.owner = nil 
end 
end
end
end