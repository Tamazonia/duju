

Network.destroy_all
Contact.destroy_all
User.destroy_all

puts 'Previous users destroyed'

users = []
organisations = ['UBS', 'Credit Suisse']
departments = ['Cross Border Information Management', 'CRS and AEI implementation','IWM Solution Architecture','Us 871m external oversight','Market HEad Middle East and Africa','FRM IT CH', 'US 871m external', 'Solution Architecture', 'DevOps Zurch', 'Product Buffet', 'Performance CH', 'Application Maintenance', 'CM ME', 'Sales Management','Investran']
roles = ['CEO', 'AVP', 'MxB', 'VP', 'Staff', 'DIR', 'ENO', 'MDR']
genders = ['Female', 'Male']
locations = ['Uetlibergstrasse', 'Claridenstrasse', 'Kalendergasse', 'Bleicherweg', 'Talacker', 'Europaallee']


User.create!(
  first_name: 'Eva',
  last_name: 'Stamm',
  email: 'eva@duju.ch',
  password: 'dujurox',
  organisation: 'Credit Suisse',
  department: 'Cross Boarder Information Management',
  role: 'DIR',
  gender: 'Female',
  location: 'Uetlibergstrasse',
  about: 'Start-Up idea, FinTech',
  looking_for: 'Cognitive Computing, Golf, Chess Players',
  explanation: 'My team is responsible that Relationship Managers know what they can and can not do in any country covered by the bank'
  )

User.create!(
  first_name: 'Fabian',
  last_name: 'Kauter',
  email: 'fabi@duju.ch',
  password: 'dujurox',
  organisation: 'Credit Suisse',
  department: 'Product Buffet',
  role: 'DIR',
  gender: 'Male',
  location: 'Uetlibergstrasse',
  about: 'Project Management Templates and Methods',
  looking_for: 'Mentor',
  explanation: 'My team is responsible that Relationship Managers have access to information about all products they are allowed to distribute in their area'
  )

User.create!(
  first_name: 'Josu',
  last_name: 'Meier',
  email: 'josu@duju.ch',
  password: 'dujurox',
  organisation: 'Credit Suisse',
  department: 'CRS and AEI implementation',
  role: 'DIR',
  gender: 'Male',
  location: 'Uetlibergstrasse',
  about: 'Sailing Events Zurichsee',
  looking_for: 'Italian Tax Know How',
  explanation: 'My team is responsible that the bank is ready to exchange information on Financial Accounts between international tax authorities '
  )

User.create!(
  first_name: 'Ri',
  last_name: 'Meier',
  email: 'ri@duju.ch',
  password: 'dujurox',
  organisation: 'Credit Suisse',
  department: 'IWM Solution Architecture',
  role: 'DIR',
  gender: 'Female',
  location: 'Uetlibergstrasse',
  about: 'Banking Platforms insights',
  looking_for: 'Structured Products Know How',
  explanation: 'My team is responsible that the bank builds consistent and strategically defined IT infrastructure'
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
    about: 'US Tax know how',
    looking_for: 'After work events',
    location: locations.sample,
    explanation: 'My team is responsible that the bank builds consistent and strategically defined IT infrastructure'
  )
end

puts 'rest of users created'

Network.create!(networker_one: User.first, networker_two: User.last)
Network.create!(networker_one: User.second, networker_two: User.last)
Network.create!(networker_one: User.third, networker_two: User.last)
Network.create!(networker_one: User.fourth, networker_two: User.last)
Network.create!(networker_one: User.first, networker_two: users.sample)
Network.create!(networker_one: User.second, networker_two: users.sample)
Network.create!(networker_one: User.third, networker_two: users.sample)
Network.create!(networker_one: User.fourth, networker_two: users.sample)

puts 'contacts created'

