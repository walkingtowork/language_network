class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :email, :gender, :password, :password_confirmation, :username

  validates :username, :uniqueness => true
  validates :email, :uniqueness => true
end
