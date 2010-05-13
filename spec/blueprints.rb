require 'machinist/mongoid'
require 'sham'
require 'forgery'

# Shams
# We use forgery to make up some test data

Sham.login { Forgery::Internet.user_name }
Sham.name  { Forgery::Name.company_name }
Sham.first_name  { Forgery::Name.first_name }
Sham.last_name  { Forgery::Name.last_name }
Sham.text { Forgery::LoremIpsum.sentence }
Sham.email { Forgery::Internet.email_address }

User.blueprint do
  login Sham.login
  password {'awesome'}
  password_confirmation {'awesome'}
  email Sham.email
end