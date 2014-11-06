class Survey < ActiveRecord::Base
  has_many :surveyquestions
  belongs_to :users
end
