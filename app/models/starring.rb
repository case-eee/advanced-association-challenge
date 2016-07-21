class Starring < ActiveRecord::Base
  belongs_to :film
  belongs_to :performer
end
