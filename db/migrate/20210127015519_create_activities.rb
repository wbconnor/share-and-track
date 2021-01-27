class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :name
      t.boolean :quantity
      t.boolean :weight
      t.boolean :duration

      t.timestamps
    end
  end
end
