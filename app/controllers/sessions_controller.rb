class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user and user.authenticate(params[:password])
      if user.act == true
      session[:user_id] = user.id
      redirect_to user_url(user.id)
      else
      redirect_to user_act_url
      end

    else
      redirect_to login_url
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out "
  end
end
