class CreateIslands < ActiveRecord::Migration[6.1]
  def change
    create_table :islands do |t|
      t.string :name 
      t.string :villager1
      t.string :villager2
      t.string :villager3 
      t.string :villager4
      t.string :villager5
      t.string :villager6
      t.string :villager7
      t.string :villager8
      t.string :villager9
      t.string :villager10

      t.timestamps
    end
  end
end
