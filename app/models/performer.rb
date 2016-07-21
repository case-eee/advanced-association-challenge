class Performer < ActiveRecord::Base
  has_many :starrings
  has_many :films, through: :starrings
end
