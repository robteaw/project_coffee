class Employee_Report

  def self.employees_in_range(employee)
    Order.where("employee_id = '#{employee}'")
  end

end

