class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :title, :description
      t.references :user
      t.timestamps
    end
  end
end
