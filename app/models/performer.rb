class Performer < ActiveRecord::Base
  has_many :starred_ins
  has_many :films, through: :starred_ins
end
