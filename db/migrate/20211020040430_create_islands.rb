class CreateIslands < ActiveRecord::Migration[6.1]
  def change
    create_table :islands do |t|
      t.string :name 
      t.boolean :fossils
      t.boolean :glowing_spot
      t.boolean :able_shop 
      t.boolean :nooks_cranny
      t.boolean :collect_fruit
      t.boolean :shake_trees

      t.timestamps
    end
  end
end
