class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
       t.string   "title"
       t.string   "body"
       t.integer  "user_id"
       t.datetime "created_at", null: false
       t.datetime "updated_at", null: false
       t.timestamps
    end
  end
end
