class SurveyChoice < ActiveRecord::Base
  has_many :survey_answers
  belongs_to :survey_question
end
