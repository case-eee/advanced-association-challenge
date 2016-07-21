class User < ActiveRecord::Base
  has_many :authored_reviews, class_name: "Review", foreign_key: :author_id
  has_many :reviews, as: :reviewable
  has_many :images, as: :imageable
  has_many :votes, foreign_key: :voter_id
end
