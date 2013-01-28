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
    circle = Circle.where("user_id = ? and friend = ?", current_user.id, p.to_i)
    if circle.blank?
      message = Message.new()
      message.from_id = current_user.id
      message.typies = "join_me"
      message.to_id = p.to_i
      message.message = "join me a friend!"
      message.save
      respond_to do |format|
        format.js
      end
    else
      render :text => "you are alredy been friends"
    end
  end
  def add_friend

  end
end
