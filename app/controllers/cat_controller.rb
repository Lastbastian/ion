post '/cats' do
  new_cat = Cat.create({breed: params[:breed], name:Faker::Name.name})
  redirect '/'
end