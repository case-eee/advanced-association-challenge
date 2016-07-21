class Performer < ActiveRecord::Base
  has_many :images
  has_many :film_performers
  has_many :films, through: :film_performers
end
