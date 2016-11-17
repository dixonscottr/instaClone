
users = []
10.times do
  users << User.create!(username: Faker::Name.first_name.downcase, password: 'password', email: Faker::Internet.free_email)
end

posts = []
50.times do
  user = users.sample
  posts << Post.create!(photo: Faker::Avatar.image, caption: Faker::Hipster.sentence(3), user: user, location: Faker::Pokemon.location)
end

comments = []
200.times do
  user = users.sample
  post = posts.sample
  comments << Comment.create!(content: Faker::Hacker.say_something_smart, user: user, post: post)
end

users.each do |user|
  Like.create!(post: posts.sample, user: user)
end



