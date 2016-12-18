class CreatePossibleDays < ActiveRecord::Migration[5.0]
  def change
    create_table :possible_days do |t|
      t.string :day
      t.date :from_date
      t.date :to_date
      t.string :from_time
      t.string :to_time
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
