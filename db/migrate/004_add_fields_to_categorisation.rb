class AddFieldsToCategorisation < ActiveRecord::Migration
  def self.up
    change_table :categorisations do |t|
      t.integer :category_id
    t.integer :recipe_id
    end
  end

  def self.down
    change_table :categorisations do |t|
      t.remove :category_id
    t.remove :recipe_id
    end
  end
end
