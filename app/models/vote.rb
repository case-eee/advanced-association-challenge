class Vote < ActiveRecord::Base
  belongs_to :voter, class_name: "User"
  belongs_to :votable, polymorphic: true
  validates :voter_id, uniqueness: {scope: [:votable_id, :votable_type], message: "User allowed only one vote per movie/review"}
end
