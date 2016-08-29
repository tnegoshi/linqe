class User < ActiveRecord::Base
  has_many :comments, :foreign_key => 'commenter_id'
  has_many :linqes, :foreign_key => 'submitter_id'
  has_many :comments, through: :linqes, :foreign_key => 'submitter_id'
  has_secure_password

  validates :username, uniqueness: { case_sensitive: false }
  validates :username, presence: true
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def name
    "#{self.first_name} #{self.last_name}"
  end
end
