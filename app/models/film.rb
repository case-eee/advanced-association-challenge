class Film < ActiveRecord::Base
  belongs_to :category
  has_many :performer_films
  has_many :performers, through: :performer_films
  has_many :reviews, as: :reviewable
  has_many :images, as: :imageable
  has_many :votes, as: :votable
end
