class AddFieldsToRecipes < ActiveRecord::Migration
  def self.up
    change_table :recipes do |t|
      t.string :title
    t.text :description
    t.string :image_url
    t.text :instructions
    t.integer :preparation_time
    t.integer :cooking_time
    t.integer :serves
    end
  end

  def self.down
    change_table :recipes do |t|
      t.remove :title
    t.remove :description
    t.remove :image_url
    t.remove :instructions
    t.remove :preparation_time
    t.remove :cooking_time
    t.remove :serves
    end
  end
end
