class UserObserver < ActiveRecord::Observer
  observe :user

  def after_save(user)
    UserMailer.confirm(user.email,user).deliver
  end
end
