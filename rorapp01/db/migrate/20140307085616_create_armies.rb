class CreateArmies < ActiveRecord::Migration
  def change
    create_table :armies do |t|
      t.string :commander
      t.integer :barbarian_lv
      t.integer :barbarian_count
      t.integer :food

      t.timestamps
    end
  end
end
