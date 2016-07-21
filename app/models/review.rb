class Review < ActiveRecord::Base
  belongs_to :reviewable, polymorphic: true
  has_many :votes, as :votable
end
