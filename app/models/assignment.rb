class Assignment < ActiveRecord::Base
  attr_accessible :category_id, :circle_id, :discription, :invalidate, :timelimit, :title, :typies, :user_id, :validate
  attr_accessor :validate_date, :validate_time
  after_initialize :get_validate
  before_validation :set_validate

  def get_validate
    self.validate ||= Time.now
    self.validate_date ||= self.validate.to_date.to_s(:db)
    self.validate_time ||= "#{'%02d' % self.validate.hour}:#{'%02d' % self.validate.min}"
  end
  def set_validate
    self.validate = "#{self.validate_date} #{self.validate_time}:00"
  end
end
