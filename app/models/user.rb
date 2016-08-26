class User < ActiveRecord::Base
  has_many :comments
  has_many :linqes, through: :comments
end
