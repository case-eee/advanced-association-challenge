class Film < ActiveRecord::Base
  belongs_to :category
  has_many :performer_films
  has_many :performers, through: :performer_films
  has_many :images, as: :imagable
  has_many :reviews, as: :reviewable
  has_many :votes, as: :votable
end
