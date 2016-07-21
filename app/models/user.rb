class User < ActiveRecord::Base
  has_many :reviews, as: :reviewable
  has_many :votes, as: :votable
  has_many :images, as: :imageable
end
