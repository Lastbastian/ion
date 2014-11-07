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

get '/surveys/:id/result' do
  @survey_result = Survey.find(params[:id])
  @survey_answer = SurveyAnswer(params[:survey_question])

  erb :results_survey.erb
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
