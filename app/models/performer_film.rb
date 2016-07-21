class PerformerFilm < ActiveRecord::Base
  belongs_to :performer
  belongs_to :film
end
