class SurveyQuestion < ActiveRecord::Base
  has_many :survey_choices
  has_many :survey_answers, through: :survey_choices
  belongs_to :survey
end
