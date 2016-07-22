class Performer < ActiveRecord::Base
  has_many :performer_films
  has_many :films, through: :performer_films
  has_many :images
end
