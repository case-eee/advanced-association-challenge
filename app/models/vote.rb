class Vote < ActiveRecord::Base
  belongs_to :votable, polymorphic: true
  validates :voter_id, uniqueness: {scope: [:votable_id, :votable_type] }
end
