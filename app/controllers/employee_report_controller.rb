class EmployeeReportController < ApplicationController
  def index
    if request.get?
      @orders = Order.all
    else
      employee = params[:employee]

      @orders = Order.all

      @orders = EmployeeReport.employees_in_range(employee)

    end
  end
end