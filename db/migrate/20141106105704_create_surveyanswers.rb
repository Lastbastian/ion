class CreateSurveyanswers < ActiveRecord::Migration
  def change
    create_table :survey_answers do |t|
      t.string :choice_result
      t.references :survey_question
      t.timestamps
    end
  end
end
