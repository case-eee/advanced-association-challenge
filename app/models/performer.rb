class Performer < ActiveRecord::Base
  has_many :performer_films
  has_many :films, through: :performer_films
  has_many :images, as: :imageable
  has_many :reviews, as: :reviewable
  has_many :votes, as: :votable
end
