class Inventory < ApplicationRecord
  include ActsAsTenant

  enum inventory_type: {
    material: "material",
    product: "product",
  }

  enum amount_type: {
    quantity: "quantity",
    length: "length",
    volume: "volume",
    weight: "weight",
    area: "area",
  }

  validates :cover_image_url, url: true
  validates :name, presence: true
  validates :amount, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  has_many :materials
  has_many :products, through: :materials
end
