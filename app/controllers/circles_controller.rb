# encoding: utf-8
class CirclesController < ApplicationController
  def index
    @messages = Message.find_all_by_to_id(current_user.id)
    @circles_group = current_user.master.all
  end
  def new
    @circle = Circle.new
    respond_to do |format|
      format.js
    end
  end
  def create
    @circle = Circle.new(params[:circle])
    @circle.save
    redirect_to :action => :index
  end

  def search
    q_name = params[:query].split.map {|term| "%#{term}%"}
    q_email = params[:query]
    @user= User.where("name like ? or email = ?", q_name,q_email )
    respond_to do |format|
      format.js
    end
  end

  def join_me
    p=params[:user_id]
    circle = Circle.where("user_id = ? and friend_id = ?", current_user.id, p.to_i)
    if circle.blank?
      message = Message.new()
      message.from_id = current_user.id
      message.typies = "join_me"
      message.to_id = p.to_i
      message.message = "join me a friend!"
      message.save
    end
    respond_to do |format|
      format.js
    end
  end
  def add_friend
    @message = Message.find(params[:m])
    c = Circle.where(["user_id = ? and friend_id = ?", @message.to_id.to_i,@message.from_id.to_i])
    if c.blank?
      circle = Circle.new
      circle.user_id = @message.to_id
      circle.friend_id = @message.from_id
      circle.title = "未分组"
      circle.save
      @message.delete
    else
      render :text => "yes"
    end
    respond_to do |format|
      format.js
    end
  end
  def part_list
    @title = params[:id]
    @lists = Circle.where(["user_id = ? and title = ?", current_user.id, @title])
    respond_to do |format|
      format.js
    end
  end
end
