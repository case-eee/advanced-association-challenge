class Performer < ActiveRecord::Base
  has_many :film_performers
  has_many :films, through: :film_performers
  has_many :images
end
