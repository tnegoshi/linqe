class Linqe < ActiveRecord::Base
  belongs_to :submitter, :class_name => "User"
  has_many :comments
  has_many :commenters, through: :comments
end
