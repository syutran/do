class Category < ActiveRecord::Base
  attr_accessible :title, :parent_id, :discription, :user_id
  validates_presence_of :title, :message => "Title can't be nill"
  validates_presence_of :user_id
  belongs_to :user
  has_ancestry
end
