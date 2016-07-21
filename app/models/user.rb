class User < ActiveRecord::Base
  has_many :images, as: :imagable
  has_many :reviews, as: :reviewable
  has_many :votes, foreign_key: :voter_id
end
