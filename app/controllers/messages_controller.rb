class MessagesController < ApplicationController
  def index
    @messages = current_user.receiver.all
  end
end
