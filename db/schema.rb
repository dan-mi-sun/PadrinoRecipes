ActiveRecord::Schema.define(version: 4) do

  create_table "categories", force: true do |t|
    t.string   "type"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorisations", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
    t.integer  "recipe_id"
  end

  create_table "recipes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
