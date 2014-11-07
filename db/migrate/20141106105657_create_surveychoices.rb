class CreateSurveychoices < ActiveRecord::Migration
  def change
    create_table :survey_choices do |t|
      t.string :content
      t.references :survey_question
    end
  end
end
