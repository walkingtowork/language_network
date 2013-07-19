# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  username            :string(255)
#  email               :string(255)
#  password_digest     :string(255)
#  gender              :string(255)
#  known_language_id   :integer
#  desired_language_id :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password
  has_and_belongs_to_many :known_languages
  has_and_belongs_to_many :desired_languages

  attr_accessible :email, :gender, :password, :password_confirmation, :username, :known_language_ids, :desired_language_ids

  validates :username, :uniqueness => true
  validates :email, :uniqueness => true
end
