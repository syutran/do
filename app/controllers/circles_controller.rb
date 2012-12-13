class CirclesController < ApplicationController

  def index
    @messages = Message.find_all_by_to_id(current_user.id)
  end

  def search
    #q = "%#{params[:query]}%"
    q_name = params[:query].split.map {|term| "%#{term}%"}
    q_email = params[:query]
     @user= User.where("name like ? or email = ?", q_name,q_email )
  end
end
