class CreateSurveychoices < ActiveRecord::Migration
  def change
    create_table :surveychoices do |t|
      t.string :content
    end
  end
end
