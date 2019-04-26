require 'pry'
class Owner
  attr_reader :species
  attr_accessor :name, :pets, :fishes, :cats, :dogs

  @@all = []


    def initialize(species)
      @name = name
      @species = species
      @@all << self
      @pets = {fishes: [], cats: [], dogs: []}
    end

    def pets
      @pets
    end

    def say_species
      return "I am a #{@species}."
    end

    def buy_cat(cat)
      @pets[:cats] << Cat.new(cat)
    end

    def buy_dog(dog)
      @pets[:dogs] << Dog.new(dog)
    end

    def buy_fish(fish)
      @pets[:fishes] << Fish.new(fish)
    end

    def walk_dogs
      @pets[:dogs].each do |dog|
        dog.mood = "happy"
      end
    end

    def play_with_cats
      @pets[:cats].each do |cat|
        cat.mood = "happy"
      end
    end

    def feed_fish
      @pets[:fishes].each do |fish|
        fish.mood = "happy"
      end
    end

    def list_pets
      "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
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

    def sell_pets
      @pets.each do |type, array|
      array.each do |pet|
        pet.mood = "nervous"
        end
      end
      @pets.clear
    end
end
