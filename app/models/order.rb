class Order < ApplicationRecord

  has_many :order_products, dependent: :destroy
  has_many :products, :through => :order_products

  accepts_nested_attributes_for :order_products, allow_destroy: true

  after_save :calculate_total

  validates :name, presence: true




def calculate_total
  sub_total = self.order_products.joins(:product).sum(:price)
  tax = 0.1
  tax = sub_total * tax

  total_amount = sub_total + tax

  update_columns(sub_total: sub_total, tax: tax, total_amount: total_amount)

  end
end