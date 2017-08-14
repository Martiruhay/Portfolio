class Post < ApplicationRecord
  
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  has_attached_file :image,
    styles: { large: "600x600>", medium: "400x400>", thumb: "100x100>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  
  def should_generate_new_friendly_id?
    true
  end
  
  
end
