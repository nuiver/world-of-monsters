class Monster < ApplicationRecord

  def self.order_by_name
    order(:name)
  end

  def self.sorted_by_health
    order(:health)
  end

  def is_dead?
    health <= 0
  end

end
