class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :type
      t.string :lecture_title
      t.string :description
      t.string :email
      t.integer :nb_of_times
      t.decimal :duration
      t.string :link_1
      t.string :link_2

      t.timestamps
    end
  end
end
