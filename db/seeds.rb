

Network.destroy_all
Contact.destroy_all
User.destroy_all

puts 'Previous users destroyed'

users = []
organisations = ['UBS', 'Credit Suisse']
departments = ['WTID 12', 'WTRF 62', 'WAAB', 'WTRA 432', 'WAOD 5', 'WTIC 23']
roles = ['Normal Clerk', 'Normal Clerk', 'Director', 'Super-Chief']
genders = ['Female', 'Male']
locations = ['Zurich', 'Basel', 'Geneva', 'Lausanne']



User.create!(
  first_name: 'Eva',
  last_name: 'Stamm',
  email: 'eva@duju.ch',
  password: 'dujurox',
  organisation: 'Credit Suisse',
  department: 'WTID 12',
  role: 'Director',
  gender: 'Female',
  location: 'Zurich',
  about: Faker::Lorem.paragraph(2, false, 4),
  looking_for: Faker::Lorem.sentence(2),
  explanation: 'My Department does something very interesting, that is doing bla bla bla'
  )

User.create!(
  first_name: 'Fabian',
  last_name: 'Kauter',
  email: 'fabi@duju.ch',
  password: 'dujurox',
  organisation: 'Credit Suisse',
  department: 'WAAB',
  role: 'Director',
  gender: 'Male',
  location: 'Zurich',
  about: Faker::Lorem.paragraph(2, false, 4),
  looking_for: Faker::Lorem.sentence(2),
  explanation: 'My Department does something very interesting, that is doing bla bla bla'
  )

User.create!(
  first_name: 'Josu',
  last_name: 'Meier',
  email: 'josu@duju.ch',
  password: 'dujurox',
  organisation: 'UBS',
  department: 'WAAB',
  role: 'Director',
  gender: 'Male',
  location: 'Zurich',
  about: Faker::Lorem.paragraph(2, false, 4),
  looking_for: Faker::Lorem.sentence(2),
  explanation: 'My Department does something very interesting, that is doing bla bla bla'
  )

User.create!(
  first_name: 'Ri',
  last_name: 'Meier',
  email: 'ri@duju.ch',
  password: 'dujurox',
  organisation: 'UBS',
  department: 'WAAB',
  role: 'Director',
  gender: 'Female',
  location: 'Zurich',
  about: Faker::Lorem.paragraph(2, false, 4),
  looking_for: Faker::Lorem.sentence(2),
  explanation: 'My Department does something very interesting, that is doing bla bla bla'
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
    gender: genders.sample,
    about: Faker::Lorem.paragraph(2, false, 4),
    looking_for: Faker::Lorem.sentence(2),
    location: locations.sample,
    explanation: 'My Department does something very interesting, that is doing bla bla bla'
  )
end

puts 'rest of users created'

