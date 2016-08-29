class Linqe < ActiveRecord::Base
  #associations
  belongs_to :submitter, :class_name => "User"
  has_many :comments
  has_many :commenters, through: :comments

  #validations
  validates :title, presence: true, length: { maximum: 200 }
  # validates :url, format: { with: URI.regexp }, if: Proc.new { |a| a.url.present? }
  validates :id, uniqueness: true


  # before_validation(on: :create) do
  #   self.linkerize
  # end

  # def linkerize
  #   URI::HTTP.build(host: self.url).to_s
  # end
end
