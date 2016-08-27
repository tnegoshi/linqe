class User < ActiveRecord::Base
  has_many :comments
  has_many :linqes, through: :comments
  has_secure_password



  #validations here
end
