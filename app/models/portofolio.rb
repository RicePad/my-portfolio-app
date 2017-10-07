class Portofolio < ApplicationRecord
  validates_presence_of :title, :body, :thumb_image
    
  def self.angular
    where(subtitle: "Angular")
  end
    

end
