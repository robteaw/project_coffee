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
Product.create([{name:'Coffee',image_url:'https://10speedcoffee.com/wp-content/uploads/2015/12/cup1.png',
                 price:'2.50', remaining_quantity:'50'}])
Product.create([{name:'Tea',image_url:'http://fairlytea.com/wp-content/uploads/2016/06/cup_PNG2000.png',
                 price:'3.25', remaining_quantity:'50'}])
Product.create([{name:'Latte',image_url:'https://mixcafe.co/wp-content/uploads/2017/09/Latte.png',
                 price:'3.00', remaining_quantity:'50'}])
Product.create([{name:'Frappuccino',image_url:'http://mocafeusa.com/wp-content/uploads/2017/12/Carmel-frappe-1.png',
                 price:'4.50', remaining_quantity:'50'}])
Product.create([{name:'Cake',image_url:'https://orig00.deviantart.net/8561/f/2011/036/6/1/365_day_36_berry_cheesecake_by_korikian-d38vhni.png',
                 price:'2.50', remaining_quantity:'50'}])
Product.create([{name:'Cookie',image_url:'https://i1.wp.com/www.mcdonalds.com/content/dam/McDonalds/item/mcdonalds-Chocolate-Chip-Cookie.png',
                 price:'1.00', remaining_quantity:'50'}])
Product.create([{name:'Brownie',image_url:'http://www.newbalance-factory-outlet.com/wp-content/uploads/2018/01/Brownie-para-vender-1.png',
                 price:'1.50', remaining_quantity:'50'}])

# employee
Employee.create([{name:'Lorrie',pay_scale:'15.00'}])
Employee.create([{name:'Ithar',pay_scale:'15.00'}])
Employee.create([{name:'Robert',pay_scale:'15.00'}])
Employee.create([{name:'Shawn',pay_scale:'15.00'}])

# admin
User.create([{email: 'admin@rils.com', password: 'password', password_confirmation: 'password', manager: true}])
User.create([{email: 'lorrie@rils.com', password: 'password', password_confirmation: 'password'}])
User.create([{email: 'ithar@rils.com', password: 'password', password_confirmation: 'password'}])
User.create([{email: 'robert@rils.com', password: 'password', password_confirmation: 'password'}])
User.create([{email: 'shawn@rils.com', password: 'password', password_confirmation: 'password'}])