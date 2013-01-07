class Category < ActiveRecord::Base
  attr_accessible :title, :parent_id, :discription, :user_id
  validates_presence_of :title, :message => "Title can't be nill"
  validates_presence_of :user_id
  belongs_to :user
  has_ancestry
  def self.arrange_as_array(options = {}, hash = nil)
    hash ||= arrange(options)
    arr = []
    hash.each do |node, children|
      arr << node
      arr += arrange_as_array(options, children) unless children.empty?
    end
    arr
  end
end
