# == Schema Information
#
# Table name: discussions
#
#  id         :integer          not null, primary key
#  content    :text
#  type       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Discussion < ActiveRecord::Base
  attr_accessible :content, :type, :user_id
end
