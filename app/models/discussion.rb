class Discussion < ActiveRecord::Base
  attr_accessible :content, :type, :user_id
end
