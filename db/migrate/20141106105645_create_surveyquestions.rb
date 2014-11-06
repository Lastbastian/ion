class CreateSurveyquestions < ActiveRecord::Migration
  def change
    create_table :surveyquestions do |t|
      t.string :content
      t.timestamps
    end
  end
end
