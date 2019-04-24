class Item < ApplicationRecord
  mount_uploader :image, ImageUploader
  enum state:{"新品、未使用":1,"未使用に近い":2,"目立った傷や汚れなし":3,"やや傷や汚れあり":4,"傷や汚れあり":5,"全体的に状態が悪い":6}

  with_options presence: true do
    validates :name, length: { maximum: 40 }
    validates :description, length: { maximum: 1000 }
    validates :state
    validates :price
    validates :user_id
  end
end
