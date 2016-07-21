class Film < ActiveRecord::Base
  belongs_to :category
  has_many :films_performers
  has_many :performers, through: :films_performers
end
