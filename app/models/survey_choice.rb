class SurveyChoice < ActiveRecord::Base
  has_many :surveyanswers
  belongs_to :surveyquestions
end
