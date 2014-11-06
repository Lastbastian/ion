class SurveyQuestion < ActiveRecord::Base
  has_many :surveychoices
  has_many :surveyanswers, through: :surveychoices
  belongs_to :surveys
end
