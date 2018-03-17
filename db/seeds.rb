# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

puts 'Previous users destroyed'

users = []
organisations = ['UBS', 'Credit Suisse']
departments = ['Organisation', 'Sales', 'Marketing', 'HR']
roles = ['Normal Clerk', 'Normal Clerk', 'Director', 'Super-Chief']
genders = ['Female', 'Male']

User.create!(
  first_name: 'Eva',
  last_name: 'Stamm',
  email: 'eva@duju.ch',
  password: 'dujurox',
  organisation: 'Credit Suisse',
  department: 'Marketing',
  role: 'Director',
  gender: 'Female'
  )

User.create!(
  first_name: 'Fabian',
  last_name: 'Kauter',
  email: 'fabi@duju.ch',
  password: 'dujurox',
  organisation: 'Credit Suisse',
  department: 'Marketing',
  role: 'Director',
  gender: 'Male'
  )

User.create!(
  first_name: 'Josu',
  last_name: 'Meier',
  email: 'josu@duju.ch',
  password: 'dujurox',
  organisation: 'UBS',
  department: 'Marketing',
  role: 'Director',
  gender: 'Male'
  )

User.create!(
  first_name: 'Ri',
  last_name: 'Meier',
  email: 'ri@duju.ch',
  password: 'dujurox',
  organisation: 'UBS',
  department: 'Marketing',
  role: 'Director',
  gender: 'Female'
  )

puts 'Main users created'

35.times do
  users << User.create!(
    email: Faker::Internet.email,
    first_name: Faker::Name.first_name,
    last_name:Faker::Name.last_name,
    password: 'dujurox',
    organisation: organisations.sample,
    department: departments.sample,
    role: roles.sample,
    gender: genders.sample
  )
end

puts 'rest of users created'

