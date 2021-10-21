class CreateVillagers < ActiveRecord::Migration[6.1]
  def change
    create_table :villagers do |t|
      t.string :name
      t.boolean :talked_to
      t.belongs_to :island, null: false, foreign_key: true

      t.timestamps
    end
  end
end
