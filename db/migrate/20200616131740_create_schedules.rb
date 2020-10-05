class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.string :title, null: false
      t.date :date, null: false
      t.text :details
      t.timestamps
    end
  end
end
