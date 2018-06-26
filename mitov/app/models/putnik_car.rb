class PutnikCar < ActiveRecord::Base
belongs_to :putnik
belongs_to :car
validates :car_id, uniqueness: true
validates :putnik_id, uniqueness: true  

validate do
	if Putnik.find(self.putnik.id).car.select{|c| c.model == Car.find(self.car_id).model}.count >= 1
		errors.add(:putnik_car, "jdjddj")
end
end
end
