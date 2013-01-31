module CirclesHelper
  def user_circles_count
    count = current_user.master.all.count 
    if count < 1
      count = 0
    end
    count
  end
  def user_circles_titles
    titles = current_user.master.map {|m| m.title}
  end
end
