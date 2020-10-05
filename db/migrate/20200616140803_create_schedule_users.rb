class CreateScheduleUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :schedule_users do |t|
      t.references :user, foreign_key: true
      t.references :schedule, foreign_key: true
      t.timestamps
    end
  end
end
