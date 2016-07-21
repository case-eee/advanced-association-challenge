class FilmReview < ActiveRecord::Base
  belongs_to :film
  belongs_to :review
end
