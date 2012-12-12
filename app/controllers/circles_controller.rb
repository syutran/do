class CirclesController < ApplicationController

  def index
    @messages = Message.find_all_by_to_id(current_user.id)
  end
end
