class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation,:address, :avatar
  validates :name, :presence => true, :length => { :minimum => 4, :maximum => 60 }
  validates :email, :presence => true, :uniqueness => true, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}
  has_attached_file :avatar, :styles => { :medium => "120x120>", :thumb => "80:80>", :mini => "40x40>"}
  has_secure_password
end
