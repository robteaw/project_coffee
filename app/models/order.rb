class Order < ApplicationRecord

  # belongs_to :employee
  has_many :order_items, dependent: :destroy
  has_many :products, :through => :order_items

  accepts_nested_attributes_for :order_items, allow_destroy: true

  after_save :calculate_total

  validates :name, presence: true



  def calculate_total
    sub_total = products.map(&:price).sum
    tax = sub_total * 0.10

    total_amount = sub_total + tax


    update_columns(sub_total: sub_total, tax: tax, total_amount: total_amount)
  end

  def amount_due
    sub_total + tax
  end
end



# def calculate_total
#   sub_total = self.order_items.joins(:product).sum(:price)
#   tax = 0.1
#   tax = sub_total * tax
#
#   total_amount = sub_total + tax
#
#   update_columns(sub_total: sub_total, tax: tax, total_amount: total_amount)
#
#   end
# end