class Putnik < ActiveRecord::Base
has_many :putnik_cars
	has_many :cars, through: :putnik_cars
validates :name, uniqueness: true 
end
