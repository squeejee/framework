Factory.define :valid_user , :class => User do |u|
  u.email { Factory.next(:email) }
  u.login { Factory.next(:login) }
  u.password "123456"
  u.password_confirmation "123456"
  u.single_access_token { Factory.next(:single_access_token) }
  u.admin false
  u.invites 3
end

Factory.define :admin_user , :class => User do |u|
  u.email "admin@gmail.com"
  u.password "123456"
  u.password_confirmation "123456"
  u.single_access_token { Factory.next(:single_access_token) }
  u.admin true
end

Factory.sequence :single_access_token do |n|
  "#{n}#{(Time.now + n.seconds).to_s}#{n}" 
end

Factory.sequence :login do |l|
  "user_#{(Time.now + l.seconds).to_s}"
end

Factory.define :invalid_user , :class => User do |u|
end