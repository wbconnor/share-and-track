class CreateAchievements < ActiveRecord::Migration[5.2]
  def change
    create_table :achievements do |t|
      t.integer :activity_id
      t.integer :session_id
      t.integer :quantity
      t.float :weight
      t.float :time

      t.timestamps
    end
  end
end
