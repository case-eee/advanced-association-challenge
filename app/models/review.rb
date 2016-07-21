class Review < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  belongs_to :reviewable, polymorphic: true
  has_many :votes, as: :votable
end
