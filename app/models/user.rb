class User < ActiveRecord::Base
  has_secure_password
  has_and_belongs_to_many :known_languages
  has_and_belongs_to_many :desired_languages

  attr_accessible :email, :gender, :password, :password_confirmation, :username, :known_language_ids, :desired_language_ids

  validates :username, :uniqueness => true
  validates :email, :uniqueness => true
end
