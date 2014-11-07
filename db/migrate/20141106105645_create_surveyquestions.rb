class CreateSurveyquestions < ActiveRecord::Migration
  def change
    create_table :survey_questions do |t|
      t.string :content
      t.references :survey
      t.timestamps
    end
  end
end
