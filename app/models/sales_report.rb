class SalesReport

  def self.sales_by_order_in_range(starting,ending)
    Sale.where("sale_date >= '#{starting}' and sale_date <= '#{ending}'")#.group(:order).count
  end

  def self.sales_in_range_arel(starting,ending)
    sales = Sale.arel_table
    Sale.where(sales[:sale_date].between(starting..ending))#.group(:order).count
  end
end