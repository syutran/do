class Depot < ActiveRecord::Base
  attr_accessible :owner_id,:user_id,:title,:category_id,:typies,:item_a, :item_b,:item_c,:item_d,:item_e,:item_f,:item_g,:item_h,:item_i,:item_j,:key_a,:key_b,:key_c,:key_d,:key_e,:key_f,:key_g,:key_h,:key_i,:key_j,:readspeed
  belongs_to :user, :foreign_key => "owner_id"
  belongs_to :category
  # before_save :move_empty
  def key_a
    v = ""
    unless self.keys.blank?
      if self.keys.include??A
        v = "A"
      end
    end
    v
  end
  def key_a=(v)
    if v == "A"
      if self.keys.blank?
        self.keys = "A"
      else
        unless self.keys.include??A
          self.keys += "A"
        end
      end
    end
    self.keys.delete "A" if self.item_a.blank?
  end
  def key_b
    v = ""
    unless self.keys.blank?
      if self.keys.include??B
        v = "B"
      end
    end
    v
  end
  def key_b=(v)
    if v == "B"
      if self.keys.blank?
        self.keys = "B"
      else
        unless self.keys.include??B
          self.keys += "B"
        end
      end
    end
    self.keys.delete "B" if self.item_b.blank?
  end
  def key_c
    v = ""
    unless self.keys.blank?
      if self.keys.include??C
        v = "C"
      end
    end
    v
  end
  def key_c=(v)
    if v == "C"
      if self.keys.blank?
        self.keys = "C"
      else
        unless self.keys.include??C
          self.keys += "C"
        end
      end
    end
    self.keys.delete "C" if self.item_c.blank?
  end
  def key_d
    v = ""
    unless self.keys.blank?
      if self.keys.include??D
        v = "D"
      end
    end
    v
  end
  def key_d=(v)
    if v == "D"
      if self.keys.blank?
        self.keys = "D"
      else
        unless self.keys.include??D
          self.keys += "D"
        end
      end
    end
    self.keys.delete "D" if self.item_d.blank?
  end
  def key_e
    v = ""
    unless self.keys.blank?
      if self.keys.include??E
        v = "E"
      end
    end
    v
  end
  def key_e=(v)
    if v == "E"
      if self.keys.blank?
        self.keys = "E"
      else
        unless self.keys.include??E
          self.keys += "E"
        end
      end
    end
    self.keys.delete "E" if self.item_e.blank?
  end
  def key_f
    v = ""
    unless self.keys.blank?
      if self.keys.include??F
        v = "F"
      end
    end
    v
  end
  def key_f=(v)
    if v == "F"
      if self.keys.blank?
        self.keys = "F"
      else
        unless self.keys.include??F
          self.keys += "F"
        end
      end
    else
      self.keys.delete "F"
    end
    self.keys.delete "F" if self.item_f.blank?
  end
  def key_g
    v = ""
    unless self.keys.blank?
      if self.keys.include??G
        v = "G"
      end
    end
    v
  end
  def key_g=(v)
    if v == "G"
      if self.keys.blank?
        self.keys = "G"
      else
        unless self.keys.include??G
          self.keys += "G"
        end
      end
    end
    self.keys.delete "G" if self.item_g.blank?
  end
  def key_h
    v = ""
    unless self.keys.blank?
      if self.keys.include??H
        v = "H"
      end
    end
    v
  end
  def key_h=(v)
    if v == "H"
      if self.keys.blank?
        self.keys = "H"
      else
        unless self.keys.include??H
          self.keys += "H"
        end
      end
    end

    self.keys.delete "H" if self.item_h.blank?
  end
  def key_i
    v = ""
    unless self.keys.blank?
      if self.keys.include??I
        v = "I"
      end
    end
    v
  end
  def key_i=(v)
    if v == "I"
      if self.keys.blank? 
        self.keys = "I"
      else
        unless self.keys.include??I
          self.keys += "I"
        end
      end
    end

    self.keys.delete "I" if self.item_i.blank?
  end
  def key_j
    v = ""
    unless self.keys.blank?
      if self.keys.include??J
        v = "J"
      end
    end
    v
  end
  def key_j=(v)
    if v == "J"
      if self.keys.blank?
        self.keys = "J"
      else
        unless self.keys.include??J
          self.keys += "J"
        end
      end
      self.keys.delete "J"
    end

    self.keys.delete "J" if self.item_j.blank?
  end

  protected
  def move_empty
    (1..9).each do
      if self.item_a.blank? and !self.item_b.blank?
        self.item_a = self.item_b
        if self.keys.include??B
          self.keys += "A" unless self.keys.include??A
          self.keys.delete "B"
        end
        self.item_b = nil
      end
      if self.item_b.blank? and !self.item_c.blank?
        self.item_b = self.item_c
        if self.keys.include??C
          self.keys += "B" unless self.keys.include??B
          self.keys.delete "C"
        end
        self.item_c = nil
      end
      if self.item_c.blank? and !self.item_d.blank?
        self.item_c = self.item_d
        if self.keys.include??D
          self.keys += "C" unless self.keys.include??C
          self.keys.delete "D"
        end
        self.item_d = nil
      end
      if self.item_d.blank? and !self.item_e.blank?
        self.item_d = self.item_e
        if self.keys.include??E
          self.keys += "D" unless self.keys.include??D
          self.keys.delete "E"
        end
        self.item_e = nil
      end
      if self.item_e.blank? and !self.item_f.blank?
        self.item_e = self.item_f
        if self.keys.include??F
          self.keys += "E" unless self.keys.include??E
          self.keys.delete "F"
        end
        self.item_f = nil
      end
      if self.item_f.blank? and !self.item_g.blank?
        self.item_f = self.item_g
        if self.keys.include??G
          self.keys += "F" unless self.keys.include??F
          self.keys.delete "G"
        end
        self.item_g = nil
      end
      if self.item_g.blank? and !self.item_h.blank?
        self.item_g = self.item_h
        if self.keys.include??H
          self.keys += "G" unless self.keys.include??G
          self.keys.delete "H"
        end 
        self.item_h = nil
      end
      if self.item_h.blank? and !self.item_i.blank?
        self.item_h = self.item_i
        if self.keys.include??I
          self.keys += "H" unless self.keys.include??H
          self.keys.delete "I"
        end
        self.item_i = nil
      end
      if self.item_i.blank? and !self.item_j.blank?
        self.item_i = self.item_j
        if self.keys.include??J
          self.keys += "I" unless self.keys.include??I
          self.keys.delete "J"
        end
        self.item_j = nil
      end
    end
  end
end
