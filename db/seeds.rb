# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create name: 'David', status: :active, kind: :manager, email: 'manager@gmail.com', password: 123456
User.create name: 'Alan', status: :active, kind: :salesman, email: 'alan@gmail.com', password: 123456
User.create name: 'Maria', status: :active, kind: :salesman, email: 'maria@gmail.com', password: 123456

Client.create name: 'Jõao', status: :active
Client.create name: 'Mario', status: :active
Client.create name: 'Loja  Ltda', status: :active
Client.create name: 'Loja Dois', status: :active

Product.create name: 'MacBook Pro', price: 10000, user_id: 1
Product.create name: 'Ipad', price: 5000, user_id: 1
Product.create name: 'Iphone 7 Plus', price: 3000, user_id: 1
Product.create name: 'MacBook Air', price: 9000, user_id: 1