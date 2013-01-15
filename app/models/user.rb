class User < ActiveRecord::Base

  attr_accessible :email, :name, :password, :password_confirmation,:address, :avatar, :active_code, :birth, :industry
  validates :name, :presence => true, :length => { :minimum => 3, :maximum => 60 }
  validates :email, :presence => true, :uniqueness => true, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}

  has_attached_file :avatar, :styles => { :medium => "120x120>", :thumb => "80:80>", :mini => "40x40>"}
  has_many :categories
  has_many :circles
  has_many :depots
  has_secure_password

  before_create do |user|
    user.act = false
    user.active_code = Digest::SHA2.hexdigest(Time.now.to_i.to_s)
  end
  after_create do |user|
    UserMailer.confirm(user.email,user).deliver
  end
end
