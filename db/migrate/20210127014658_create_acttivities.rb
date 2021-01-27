class CreateActtivities < ActiveRecord::Migration[5.2]
  def change
    create_table :acttivities do |t|
      t.string :name
      t.boolean :quantity
      t.boolean :weight
      t.boolean :time

      t.timestamps
    end
  end
end
