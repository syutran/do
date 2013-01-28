class Message < ActiveRecord::Base
  attr_accessible :title, :body
  belongs_to :receiver, :class_name => 'User', :foreign_key => 'to_id'
  belongs_to :sender, :class_name => 'User', :foreign_key => 'from_id'
end
