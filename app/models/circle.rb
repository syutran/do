class Circle < ActiveRecord::Base
  attr_accessible :title, :user_id
  validates_presence_of :title
  belongs_to :master, :class_name => 'User', :foreign_key => "user_id"
  belongs_to :friend, :class_name => 'User', :foreign_key => "friend_id"
end
