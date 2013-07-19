# == Schema Information
#
# Table name: languages
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  type       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class DesiredLanguage < Language
  has_and_belongs_to_many :users
  # attr_accessible :title, :body
end
