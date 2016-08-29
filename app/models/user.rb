class User < ActiveRecord::Base
  has_many :comments, :foreign_key => 'commenter_id'
  has_many :linqes, :foreign_key => 'submitter_id'
  has_many :comments, through: :linqes, :foreign_key => 'submitter_id'
  has_secure_password

  validates :username, uniqueness: { case_sensitive: false }
  validates :username, presence: true

  def name
    "#{self.first_name} #{self.last_name}"
  end
end
