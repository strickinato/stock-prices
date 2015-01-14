# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new({username: "aaronstrick", password: "hello123"})
user.save!

Company.create!({ ticker: "AAPL" })
Company.create!({ ticker: "GOOG" })
Company.create!({ ticker: "AARO" })

UsersCompany.create!({ user_id: 1, company_id: 1 })
UsersCompany.create!({ user_id: 1, company_id: 2 })

Price.create!({ company_id: 1, date:"2014-01-10", price: 45 })
Price.create!({ company_id: 1, date:"2014-01-11", price: 43 })
Price.create!({ company_id: 2, date:"2014-01-10", price: 599 })
Price.create!({ company_id: 2, date:"2014-01-11", price: 504 })
Price.create!({ company_id: 3, date:"2014-01-10", price: 1 })
Price.create!({ company_id: 3, date:"2014-01-11", price: 2 })
