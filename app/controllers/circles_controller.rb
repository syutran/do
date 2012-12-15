class CirclesController < ApplicationController
  def index
    @messages = Message.find_all_by_to_id(current_user.id)
  end

  def search
    q_name = params[:query].split.map {|term| "%#{term}%"}
    q_email = params[:query]
    @user= User.where("name like ? or email = ?", q_name,q_email )
  end

  def join_me
    p=params[:user_id]
    circle = Circle.where("user_id = ? and friend = ?", current_user.id, p)
    if circle.blank?
      respond_to do |format|
        format.js
      end
    else
      render :text => "you are alredy been friends"
    end
  end
end
