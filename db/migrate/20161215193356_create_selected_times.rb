class CreateSelectedTimes < ActiveRecord::Migration[5.0]
  def change
    create_table :selected_times do |t|
      t.references :student, foreign_key: true
      t.references :event, foreign_key: true
      t.date :from_date
      t.date :to_date
      t.string :from_time
      t.string :to_time
      t.boolean :cell_status

      t.timestamps
    end
  end
end
