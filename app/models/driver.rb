class Driver < ApplicationRecord
  has_attached_file :image, styles: { medium: "200x200>", thumb: "300x300>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def self.getExpire(date)
    expire_in = (date - Time.now.to_date).to_i
    return expire_in
  end

  def self.getStatus(date)
    expire_in = (date - Time.now.to_date).to_i
    if expire_in < 31
      return "1 red"
    elsif expire_in < 91
      return "2 orange"
    else
      return "3 green"
    end
  end
end
