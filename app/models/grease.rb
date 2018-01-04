class Grease < ApplicationRecord
  def self.getExpire(date)
    return (date.strftime("%F").to_date - Date.today.strftime("%F").to_date).to_i + 15
    # return (Date.today.to_date - date.strftime("%F").to_date).to_i
  end

  def self.getStatus(date)
    expire_in = (date.strftime("%F").to_date - Date.today.strftime("%F").to_date).to_i + 15
    if expire_in < 2
      return "1 red"
    elsif expire_in < 5
      return "2 orange"
    else
      return "3 green"
    end
  end
end
