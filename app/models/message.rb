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

class Message < Discussion
  attr_accessible :sender_id, :receiver_id
  belongs_to :sender, :class_name => "User"
  belongs_to :receiver, :class_name => "User"
end
