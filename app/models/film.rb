class Film < ActiveRecord::Base
  belongs_to :category
  has_many :starred_ins
  has_many :performers, through: :starred_ins
end
