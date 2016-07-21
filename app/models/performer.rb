class Performer < ActiveRecord::Base
  has_many :films, through: :films_performers
  has_many :images, as: :imageable
  has_many :reviews, as: :reviewable
  has_many :votes, as: :votable
end
