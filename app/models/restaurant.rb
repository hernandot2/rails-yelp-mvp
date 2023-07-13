# class Restaurant < ApplicationRecord
#   validates :name, :address, :rating, :phone_number, :category, presence: true
# end

# class Restaurant < ApplicationRecord
#   has_many :reviews, dependent: :destroy

#   validates :name, :address, :rating, :phone_number, :category, presence: true
#   validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
# end

class Restaurant < ApplicationRecord
  restaurant_types = ["chinese", "italian", "japanese", "french", "belgian"]

  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, :phone_number, presence: true
  validates :category, inclusion: { in: restaurant_types, message: "%{value} is not a valid size" }
end
