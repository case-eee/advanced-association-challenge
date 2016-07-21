class Film < ActiveRecord::Base
  belongs_to :category
  has_many :performers, through: :films_performers
  has_many :reviews, as: :reviewable
  has_many :votes, as: :votable
  has_many :images, as: :imageable
end
