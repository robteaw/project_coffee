class Sale < ApplicationRecord
  belongs_to :order
  belongs_to :employee

end


def calculate_sales
  total = order.sum(&:total_amount)
  update_columns(total_sales: total)
end
