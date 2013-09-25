class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :companyname, presence: true

  #attr_accessible :companyname, :contactfirst, :contactlast, :contactemail, :contactphone, :address, :city, :zip, :country, :state

  has_many :jobs
  has_one :settings
  accepts_nested_attributes_for :settings
end
