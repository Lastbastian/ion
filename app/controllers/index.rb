get '/' do
@surveys = Survey.all

erb :index
end


get '/surveys/new' do
  erb :create_survey
end

post '/surveys/:id/edit' do
  @questions = SurveyQuestion.create(params[:survey_question])
  redirect '/'
end

post '/surveys' do
  @survey = Survey.create(params[:survey])
  redirect "/surveys/#{@survey.id}/edit"
end

get '/surveys/:id/edit' do
  @survey = Survey.find(params[:id])
  erb :edit_survey
end




get '/take_survey/:id' do

end




post '/take_survey/:id' do

end






get '/create_survey' do

erb :create_survey
end




post '/create_survey/:id' do


redirect '/'
end

  # @survey = Survey.new(params[:survey])
  # if @survey.save
  #   @question = @survey.SurveyQuestion.new(params[:survey_question])
  #   if @question.save
  #     @question.survey_choices.create!(params[:survey_choice])
  #     redirect '/'
  #   else
  #     erb :create_survey
  #   end
  # else
  #   erb :create_survey
  # end



get '/user/sign_up' do
  erb :sign_up
end

post '/user/sign_up' do
  User.create(params[:user])
  redirect '/'
end

# ============

get '/user/log_in' do
  erb :sign_in
end

post '/user/log_in' do
  @user = User.find_by_email(params[:email])
  if @user.password == params[:password_hash]
    session[:user_id] = @user.id
    redirect '/'
  else
    redirect '/user/log_in'
  end
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end