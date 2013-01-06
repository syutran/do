class UserObserver < ActiveRecord::Observer
  observe :user

  def after_save(user)
    UserMailer.registration_confirmation(user).deliver
  end
end
