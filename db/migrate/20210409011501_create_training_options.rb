class CreateTrainingOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :training_options do |t|
      t.string :label
      t.integer :fee

      t.timestamps
    end
  end
end
