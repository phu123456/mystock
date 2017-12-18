class Discription < ApplicationRecord
  has_attached_file :image, styles: { medium: "200x200>", thumb: "300x300>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
