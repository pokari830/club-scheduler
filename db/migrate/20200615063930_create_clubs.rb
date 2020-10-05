class CreateClubs < ActiveRecord::Migration[5.0]
  def change
    create_table :clubs do |t|
      t.string :teamName, null: false

      t.timestamps
    end
  end
end
