class Category < ActiveRecord::Base
  attr_accessible :title, :sup_category, :discription, :user_id,:parent_id
  validates_presence_of :title, :message => "Title can't be nill"
  validates_presence_of :sup_category
  validates_presence_of :user_id
  belongs_to :user
  has_ancestry
end
