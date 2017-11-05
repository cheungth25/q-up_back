# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
john = User.create(first_name:'John', last_name:'Doe', email:'john@gmail.com', email_confirmation:'john@gmail.com', phone: 1234567890, password:'abc123', password_confirmation:'abc123')
jane = User.create(first_name:'Jane', last_name:'Smith', email:'jane@gmail.com', email_confirmation:'jane@gmail.com', phone: 7180987654, password:'abc123', password_confirmation:'abc123')
billy = User.create(first_name:'Billy', last_name:'Bob', email:'billy@gmail.com', email_confirmation:'billy@gmail.com', phone: 6461234567, password:'abc123', password_confirmation:'abc123')

line1 = Line.create(name:'line1', code:'abc', host:john)
line2 = Line.create(name:'line2', code:'xyz', host:jane)

line1.users << john
line1.users << jane
line1.users << billy

line2.users << billy
