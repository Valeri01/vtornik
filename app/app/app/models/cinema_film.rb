class CinemaFilm < ActiveRecord::Base

	belongs_to :cinema
	belongs_to :film
end
