class Performer < ActiveRecord::Base
  has_many :performer_films
  has_many :films, through: :performer_films
  has_many :images, as: :imagable
  has_many :reviews, as: :reviewable
end
