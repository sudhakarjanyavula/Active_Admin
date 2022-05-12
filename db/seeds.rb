# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


	tessa = User.create(email:"tessa@gmail.com",userName:"tessa")
	t1 = Portfolio.create(user_id:tessa.id,title:"tessa's portfolio")
	t2 = Portfolio.create(user_id:tessa.id,title:"tessa's 2nd portfolio")
	Stock.create(portfolio_id:t1.id,symbol:"AAPL",purchase_price:264.39,quantity:200,remaining:200)
	Stock.create(portfolio_id:t2.id,symbol:"MSFT",purchase_price:389.61,quantity:100,remaining:100)

	# Billy
	billy = User.create(email:"billy@gmail.com",userName:"billy")
	b1 = Portfolio.create(user_id:billy.id,title:"billy's portfolio")
	Stock.create(portfolio_id:b1.id,symbol:"EEXO",purchase_price:452.86,quantity:1000,remaining:1000)

	# Gertrude
	gertrude = User.create(email:"gertrude@gmail.com",userName:"gertrude")
	g1 = Portfolio.create(user_id:gertrude.id,title:"gertrude's portfolio")
	Stock.create(portfolio_id:g1.id,symbol:"RESU",purchase_price:887.02,quantity:300,remaining:300)

if Rails.env.development?
	AdminUser.create(email: 'dhan@gmail.com', password: '123456', password_confirmation: '123456')
	AdminUser.create(email: 'ram@gmail.com', password: '123456', password_confirmation: '123456')
	AdminUser.create(email: 'bin@gmail.com', password: '123456', password_confirmation: '123456') 
end