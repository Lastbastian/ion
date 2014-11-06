class CreateSurveyanswers < ActiveRecord::Migration
  def change
    create_table :surveyanswers do |t|
      t.string :choice_result
      t.timestamps
    end
  end
end
