class CreateSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.string :workout_description
      t.string :date
      t.string :time
      t.integer :price
      t.integer :client_id
      t.integer :trainer_id
      t.timestamps
    end
  end
end
