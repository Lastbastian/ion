require 'faker'

10.times do
  Survey.create(title: Faker::Name.title, description: Faker::Lorem.sentence)
  User.create(username: 'joejoe', email: 'joejoe@joe.com', password_hash: 123456)
  Surveyquestions.create(content: Faker::Name.title)
  Surveychoices.create(content: Faker::Name.title)
  Surveyanswers.create(content: Faker::Name.title)
end


#, vote_count: 0, content_link: Faker::Internet.url)