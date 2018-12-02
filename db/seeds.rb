require 'faker'

admin_user = User.create!(
  email: 'oatesmi.74@gmail.com',
  password: 'password'
)

test_dummy = User.create!(
  email: 'fake@fake.com',
  password: 'password'
)

10.times do
  User.create!(
    email: Faker::Internet.safe_email,
    password: Faker::Internet.password(8)
  )
end

users = User.all

50.times do
  Post.create!(
    title: Faker::Number.number(6),
    body: Faker::Number.number(150)
  )
end

posts = Post.all

puts "Seeds finished"
puts "#{User.count} users created"
puts "#{Post.count} posts created"
