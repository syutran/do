class Circle < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :master, :class_name => 'User', :foreign_key => "user_id"
  belongs_to :friend, :class_name => 'User', :foreign_key => "friend"
end
