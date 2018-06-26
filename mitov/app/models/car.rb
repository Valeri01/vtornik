class Car < ActiveRecord::Base
has_many :putnik_cars
	has_many :putniks, through: :putnik_cars
	validates :number, uniqueness: true 
	
end
