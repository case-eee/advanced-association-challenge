class User < ActiveRecord::Base
  has_many :images, as: :imageable
end
