class Depot < ActiveRecord::Base
  attr_accessible :owner_id,:user_id,:title,:category_id,:typies,:item_a, :item_b,:item_c,:item_d,:item_e,:item_f,:item_g,:item_h,:item_i,:item_j,:keys,:readspeed
  belongs_to :user, :foreign_key => "owner_id"
  belongs_to :category

end
