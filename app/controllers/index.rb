get '/' do
@surveys = Survey.all

erb :index
end






get '/take_survey/:id' do

end







post '/take_survey/:id' do


redirect '/'
end






get '/create_survey' do

erb :create_survey
end




post '/create_survey/:id' do


redirect '/'
end