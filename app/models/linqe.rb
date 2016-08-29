class Linqe < ActiveRecord::Base
  #associations
  belongs_to :submitter, :class_name => "User"
  has_many :comments
  has_many :commenters, through: :comments

  #validations
  validates :title, presence: true, length: { maximum: 200 }
  validates :url, format: { with: URI.regexp }, if: Proc.new { |a| a.url.present? }
  validates :id, uniqueness: true


  before_validation(on: :create) do
    self.format_url
  end

  def format_url
    self.url = "http://#{self.url}" unless self.url[/^https?/]
  end
end
