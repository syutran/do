class Assignment < ActiveRecord::Base
  attr_accessible :category_id, :circle_id, :discription, :invalidate, :timelimit, :title, :typies, :user_id, :validate,:valitime, :add_homework, :del_homework
  validates_presence_of :title
  belongs_to :user
  # attr_accessor :validate_date, :validate_time
  # after_initialize :get_validate
  # before_validation :set_validate

  # def get_validate
  #  self.validate ||= Time.now
  #  self.validate_date ||= self.validate.to_date.to_s(:db)
  #  self.validate_time ||= "#{'%02d' % self.validate.hour}:#{'%02d' % self.validate.min}"
  # end
  # def set_validate
  #  self.validate = "#{self.validate_date} #{self.validate_time}:00"
  # end
  def valitime
    mu = 0
    unless validate.blank? and invalidate.blank?
      mu = (self.invalidate - self.validate)/60
    end
    mu
  end
  def valitime=(value)
    self.invalidate = self.validate + value.to_i*60
  end
  def add_homework(value)
    if self.homework.blank?
      self.homework = value
    else
      a = self.homework.split(",").map{|s| s.to_i} << value.to_i
      self.homework = a.join(",")
    end
  end
  def del_homework(value)
    unless self.homework.blank?
      a = self.homework.split(",").map{|s| s.to_i}
      a.delete(value.to_i)
      self.homework = a.join(",")
    end

  end
end
