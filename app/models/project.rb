class Project < ApplicationRecord
  
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  has_attached_file :image, 
    styles: { medium: "400x400>", small: "200x200>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  
end
