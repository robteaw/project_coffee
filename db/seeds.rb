# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.tables.each do |table|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table} RESTART IDENTITY CASCADE") unless table == 'schema_migrations' || table == 'ar_internal_metadata'
end

# product
Product.create([{name:'Coffee',image_url:'https://png.kisspng.com/20171216/dd9/5a35ea02ae33d1.6543248215134827547135.png',
                 price:'2.50', remaining_quantity:'30'}])
Product.create([{name:'Tea',image_url:'http://fairlytea.com/wp-content/uploads/2016/06/cup_PNG2000.png',
                 price:'3.25', remaining_quantity:'40'}])
Product.create([{name:'Latte',image_url:'https://mixcafe.co/wp-content/uploads/2017/09/Latte.png',
                 price:'3.00', remaining_quantity:'35'}])
Product.create([{name:'Frappuccino',image_url:'http://mocafeusa.com/wp-content/uploads/2017/12/Carmel-frappe-1.png',
                 price:'4.50', remaining_quantity:'50'}])




# employee
Employee.create([{name:'Robert',pay_scale:'15.00'}])
Employee.create([{name:'Mary',pay_scale:'15.00'}])
Employee.create([{name:'Julie',pay_scale:'15.00'}])
Employee.create([{name:'Ben',pay_scale:'15.00'}])
Employee.create([{name:'John',pay_scale:'20.00'}])


# admin
User.create([{email: 'admin@rils.com', password: 'password', password_confirmation: 'password'}])

