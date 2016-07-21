class User < ActiveRecord::Base
  has_many :reviews, as: :reviewable
  has_many :reviews, foreign_key: :author_id
end
