# encoding: utf-8
module ApplicationHelper
  def avatar_url(user,size)
    if user.avatar.present?
      user.avatar(size)
    else
      default_url = "#{root_url}images/guest.png"
      gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
      "http://gravatar.com/avatar/#{gravatar_id}.png?s=48&d=#{CGI.escape(default_url)}"
    end
  end

  def user_categories(user)
    user.categories.all.each { |c| c.ancestry = c.ancestry.to_s + (c.ancestry != nil ? "/" : '') + c.id.to_s}.sort {|x,y| x.ancestry <=> y.ancestry}.map{ |c| ["->" * (c.depth - 1) + c.title,c.id] }
  end
  def datetime_to_cn(datetime)
    DateTime.parse(datetime.to_s).strftime("%Y年%m月%d日%H时%M分").to_s
  end
  def user_face(user)
    if user.avatar?
      return image_tag avatar_url(user,:mini),:size=> "40x40"
    else
      return image_tag "default_face.jpg", :size => "40x40"
    end
  end
end
