class Depot < ActiveRecord::Base
  attr_accessible :owner_id,:user_id,:title,:category_id,:typies,:item_a, :item_b,:item_c,:item_d,:item_e,:item_f,:item_g,:item_h,:item_i,:item_j,:keys,:readspeed
  belongs_to :user, :foreign_key => "owner_id"
  belongs_to :category
  def items
    h = {}
    h["A"] = item_a if item_a?
    h["B"] = item_b if item_b?
    h["C"] = item_c if item_c?
    h["D"] = item_d if item_d?
    h["E"] = item_e if item_e?
    h["F"] = item_f if item_f?
    h["G"] = item_g if item_g?
    h["H"] = item_h if item_h?
    h["I"] = item_i if item_i?
    h["J"] = item_j if item_j?
    h
  end
end
