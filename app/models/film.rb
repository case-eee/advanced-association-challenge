class Film < ActiveRecord::Base
  belongs_to :category
  has_many :starred_ins
  has_many :performers, through: :starred_ins
  has_many :reviews, as: :reviewable
  has_many :images, as: :imagable
  has_many :votes, as: :votable
end
