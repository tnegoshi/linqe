class User < ActiveRecord::Base
  has_many :comments, :foreign_key => 'commenter_id'
  has_many :linqes, :foreign_key => 'submitter_id'
  has_many :comments, through: :linqes, :foreign_key => 'submitter_id'
  has_secure_password

  #validations here

  def name
    "#{self.first_name} #{self.last_name}"
  end
end
