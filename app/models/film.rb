class Film < ActiveRecord::Base
  belongs_to :category
  has_many :film_performers
  has_many :performers, through: :film_performers
  has_many :reviews, as: :reviewable
end
