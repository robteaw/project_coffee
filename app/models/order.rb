class Order < ApplicationRecord

  has_many :order_products
  has_many :products, through: :order_products

  accepts_nested_attributes_for :order_products

  after_save :calculate_total

  validates :name, presence: true

  def calculate_total
    sub_total = products.map(&:price).sum
    tax = sub_total * 0.10
    update_columns(sub_total: sub_total, tax: tax)
  end

  def amount_due
    sub_total + tax
  end
end
