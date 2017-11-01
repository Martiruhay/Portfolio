class Game < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  for i in 1..3 do
    has_attached_file "image#{i}", 
      styles: { big: "720x400>", medium: "400x400>", small: "200x200>"},
      path: Rails.env.development? ? 
        "_dev/:class/:style/:slug/:attachment.:extension"
        : ":class/:style/:slug/:attachment.:extension"
    validates_attachment_content_type "image#{i}", content_type: /\Aimage\/.*\z/
  end
  
  def should_generate_new_friendly_id?
    true
  end
  
end
