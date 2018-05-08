

Network.destroy_all
Contact.destroy_all
User.destroy_all

puts 'Previous users destroyed'

users = []
organisations = ['Credit Suisse']
departments = ['Cross Border Information Management', 'CRS and AEI implementation','IWM Solution Architecture','Us 871m external oversight','Market HEad Middle East and Africa','FRM IT CH', 'US 871m external', 'Solution Architecture', 'DevOps Zurch', 'Product Buffet', 'Performance CH', 'Application Maintenance', 'CM ME', 'Sales Management','Investran']
roles = ['CEO', 'AVP', 'MxB', 'VP', 'Staff', 'DIR', 'ENO', 'MDR']
genders = ['Female', 'Male']
locations = ['Uetlibergstrasse', 'Claridenstrasse', 'Kalendergasse', 'Bleicherweg', 'Talacker', 'Europaallee']


User.create!(
  first_name: 'Eva',
  last_name: 'Stamm',
  email: 'eva.stamm@credit-suisse.com',
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
  email: 'fabian.kauter@credit-suisse.com',
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
  last_name: 'Iturrioz',
  email: 'josu.iturrioz@credit-suisse.com',
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
  first_name: 'Rahel',
  last_name: 'Imobersteg',
  email: 'rahel.imobersteg@credit-suisse.com',
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

# 35.times do
#   users << User.create!(
#     email: Faker::Internet.email,
#     first_name: Faker::Name.first_name,
#     last_name:Faker::Name.last_name,
#     password: 'dujurox',
#     organisation: organisations.sample,
#     department: departments.sample,
#     role: roles.sample,
#     gender: genders.sample,
#     about: 'US Tax know how',
#     looking_for: 'After work events',
#     location: locations.sample,
#     explanation: 'My team is responsible that the bank builds consistent and strategically defined IT infrastructure'
#   )
# end


users << User.create!(
  first_name: 'Stefano',
  last_name: 'Bickel',
  email: 'Stefano.Boeckel@credit-suisse.com',
  password: 'dujurox',
  organisation: 'Credit Suisse',
  department: 'Cross Border Information Management',
  role: 'AVP',
  gender: 'male',
  location: 'Kalandergasse',
  about: 'Start-Up idea, FinTech',
  looking_for: 'Cognitive Computing, Golf, Chess Players',
  explanation: 'My team is responsible that Relationship Managers know what they can and cant do in any country covered by the bank',
)
users << User.create!(
  first_name: 'Valelito',
  last_name: 'Collazini',
  email: 'Valelito.Collazini@credit-suisse.com',
  password: 'dujurox',
  organisation: 'Credit Suisse',
  department: 'Product Buffet',
  role: 'ENO',
  gender: 'male',
  location: 'Kalandergasse',
  about: 'Project Management Templates and Methods',
  looking_for: 'Mentor',
  explanation:'My team is responsible that Relationship Managers have access to information about all products they are allowed to distribute in their area'
)
users << User.create!(
  first_name: 'Zabakita',
  last_name: 'Bhagat',
  email: 'Zabakita.Bhagat@credit-suisse.com',
  password: 'dujurox',
  organisation: 'Credit Suisse',
  department: 'CRS and AEI implementation',
  role: 'VP',
  gender: 'female',
  location: 'Claridenstrasse',
  about: 'Sailing Events Zurichsee',
  looking_for: 'Italian Tax Know How',
  explanation: 'My team is responsible that the bank is ready to exchange information on Financial Accounts between international tax authorities'
)
users << User.create!(
  first_name: 'Thomas',
  last_name: 'Borer',
  email: 'Thomas.Borer@credit-suisse.com',
  password: 'dujurox',
  organisation: 'Credit Suisse',
  department:'IWM Solution Architecture',
  role: 'DIR',
  gender: 'male',
  location: 'Europaallee',
  about: 'Banking Platforms insights',
  looking_for: 'Structured Products Know How',
  explanation: 'My team is responsible that the bank builds consistent and strategically defined IT infrastructure'
)
users << User.create!(
  first_name: 'Blazi Miguel',
  last_name: 'Dela Melo',
  email: 'blazimiguel.delamelo@credit-suisse.com',
  password: 'dujurox',
  organisation: 'Credit Suisse',
  department: 'US 871m external oversight',
  role: 'MxB',
  gender: 'male',
  location: 'Uetlibergstrasse',
  about: 'US Tax know how',
  looking_for: 'After work events',
  explanation: 'My team is responsible that all of you are compliant with the US tax code section 871, requiring that dividends on US equities are taxed'
  )
users << User.create!(
  first_name: 'Torsten',
  last_name: 'Bosko',
  email: 'Torsten.Bosko@credit-suisse.com',
  password: 'dujurox',
  organisation: 'Credit Suisse',
  department: 'Market Head Middle East and Africa',
  role: 'CEO',
  gender: 'male',
  location: 'Bleicherweg',
  about: 'Mentoring',
  looking_for: 'Spontaneous lunch meetings',
  explanation: 'My team is responsible that the bank generates revenues and builds long lasting client relationships in the emerging market Middle East and Africa'
  )







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

