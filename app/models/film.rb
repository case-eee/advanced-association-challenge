class Film < ActiveRecord::Base
  belongs_to :category
  has_many :starrings
  has_many :performers, through: :starrings
end
