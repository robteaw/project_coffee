class SalesReportController < ApplicationController
  def index
    if request.get?
      @sales = Sale.all
    else
        start_date = params[:start_date]
        end_date = params[:end_date]
        @sales = SalesReport.sales_by_order_in_range(start_date,end_date)
      end
  end
end
