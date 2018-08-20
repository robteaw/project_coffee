class Employee < ApplicationRecord

  has_many :order_items
  has_many :sales
  has_many :orders, through: :sales
end
