class Film < ActiveRecord::Base
  belongs_to :category
  has_many :performer_films
  has_many :performers, through: :performer_films
end
