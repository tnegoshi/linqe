class Linqe < ActiveRecord::Base
  #associations
  belongs_to :submitter, :class_name => "User"
  has_many :comments
  has_many :commenters, through: :comments

  #validations
  validates :title, presence: true, length: { maximum: 200 }
  validates :url, presence: true, format: { with: /^(?:(ftp|http|https):\/\/)?(?:[\w-]+\.)+[a-z]{2,6}$/, multiline: true, message: "Please enter a valid URL."}
  validates :id, uniqueness: true
end
