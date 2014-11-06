get '/' do
@survey = Survey.all
erb :index
end






get '/take_survey/:id' do

end







post '/take_survey/:id' do


redirect '/'
end







post '/create_survey/:id' do


redirect '/'
end