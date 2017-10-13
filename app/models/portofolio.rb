class Portofolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda { |attrs| attrs['name'].blank? }
  validates_presence_of :title, :body, :thumb_image
    
  def self.angular
    where(subtitle: "Angular")
  end
  
  after_initialize :set_defaults
  
  def set_defaults
    self.main_image ||= "http://via.placeholder.com/600x400"
    self.thumb_image ||= "http://via.placeholder.com/350x200"
  end
    
  def self.by_position 
    order("position ASC")
  end

end
