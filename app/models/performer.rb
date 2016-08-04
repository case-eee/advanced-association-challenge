class Performer < ActiveRecord::Base
  has_many :films_performers
  has_many :films, through: :films_performers
  has_many :images
end
