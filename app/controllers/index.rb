get '/session-viewer' do
  session.inspect
end

get '/' do
  @surveys = Survey.all
  erb :index
end

get '/create_survey' do
  erb :create_survey
end

post '/surveys/:id/edit' do
  @questions = SurveyQuestion.create(params[:survey_question])
  @survey_question_id = SurveyQuestion.last.id
  SurveyChoice.create(content: params[:survey_choice1][:content], survey_question_id: "#{@survey_question_id}")
  SurveyChoice.create(content: params[:survey_choice2][:content], survey_question_id: "#{@survey_question_id}")
  SurveyChoice.create(content: params[:survey_choice3][:content], survey_question_id: "#{@survey_question_id}")
  SurveyChoice.create(content: params[:survey_choice4][:content], survey_question_id: "#{@survey_question_id}")
end

post '/surveys' do
  @survey = Survey.create(params[:survey])
  redirect "/surveys/#{@survey.id}/edit"
end

get '/surveys/:id/edit' do
  @survey = Survey.find(params[:id])
  erb :edit_survey
end

get '/surveys/:id/result' do
  @result = Survey.find(params[:id])
  @answer = SurveyAnswer.where(:question_id, params[:survey_question])
  @survey = Survey.find(params[:id])
  @question = SurveyQuestion.where(:survey_id => @survey)
  @choice = SurveyChoice.where(:survey_question_id => @question)
  erb :results_survey
end

get '/take_survey/:id' do
  @survey = Survey.find(params[:id])
  @question = SurveyQuestion.where(:survey_id => @survey)
  @choice = SurveyChoice.where(:survey_question_id => @question)
  @answer = SurveyAnswer.where(:surveyquestion_id => @question)
  erb :take_survey
end

get '/create_survey' do
  erb :create_survey
end

get '/user/sign_up' do
  erb :sign_up
end

post '/user/sign_up' do
  User.create(params[:user])
  redirect '/'
end

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