class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.integer :achievement_id
      t.integer :user_id
      t.text :note
      t.datetime :date_completed

      t.timestamps
    end
  end
end
