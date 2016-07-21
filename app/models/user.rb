class User < ActiveRecord::Base
  has_many :authored_reviews, class_name: "Review", foreign_key: :author_id
  has_many :reviews, as: :reviewable
end
