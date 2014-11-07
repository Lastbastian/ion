get '/' do
@surveys = Survey.all

erb :index
end


get '/surveys/new' do
  erb :create_survey
end

post '/surveys/:id/edit' do
  @questions = SurveyQuestion.create(params[:survey_question])
  p params
  # @survey_question_id = params[:survey_choice][:survey_question_id]

  p @survey_question_id = SurveyQuestion.last.id
  SurveyChoice.create(content: params[:survey_choice1][:content], survey_question_id: "#{@survey_question_id}")
  SurveyChoice.create(content: params[:survey_choice2][:content], survey_question_id: "#{@survey_question_id}")
  SurveyChoice.create(content: params[:survey_choice3][:content], survey_question_id: "#{@survey_question_id}")
  SurveyChoice.create(content: params[:survey_choice4][:content], survey_question_id: "#{@survey_question_id}")
  
  p "***********"

  redirect '/take_survey/:id'
end

post '/surveys' do
  @survey = Survey.create(params[:survey])
  redirect "/surveys/#{@survey.id}/edit"
end

get '/surveys/:id/edit' do
  @survey = Survey.find(params[:id])
  erb :edit_survey
end


post '/surveys/:id/possible_choices' do
  # p "******"
  # @survey_id = params[:survey_choice][:survey_id]
  # @survey_choice = SurveyChoice.create(params[:survey_content])
  # @surveyquestion_id = SurveyQuestion.find[survey_question_id]
  p params


  redirect "/surveys/#{@survey_id}/edit"
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
