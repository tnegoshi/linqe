class User < ActiveRecord::Base
  has_many :linqes
  has_many :comments, through: :links
  has_secure_password



  #validations here
end
