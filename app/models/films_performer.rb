class FilmsPerformer < ActiveRecord::Base
  belongs_to :performer
  belongs_to :film
end
