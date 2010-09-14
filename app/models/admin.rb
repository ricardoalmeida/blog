class Admin < ActiveRecord::Base
  devise :database_authenticatable, :recoverable, :trackable, :validatable, :lockable, :timeoutable
  attr_accessible :username, :email, :password, :password_confirmation

  validates_presence_of :username
  validates_uniqueness_of :username

  has_many :posts
end
