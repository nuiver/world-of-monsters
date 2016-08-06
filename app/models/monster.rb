class Monster < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true

  validates :health, length: { maximum: 5 }, allow_blank: true
  validates :image_url, length: { maximum: 255 }, allow_blank: true

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
