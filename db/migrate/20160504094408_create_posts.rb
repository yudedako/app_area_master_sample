class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :prefecture,  null: false,  index: true
      t.references :city,        null: false,  index: true

      t.string  :code,             null: false,  limit: 7
      t.string  :name,             null: false,  limit: 250
      t.string  :name_kana,        null: true,   limit: 500
      t.integer :order,            null: false,              default: 0
      t.boolean :multi_town_flag,  null: false,              default: false
      t.boolean :multi_post_flag,  null: false,              default: false
      t.string  :city_name,        null: false,  limit: 50
      t.string  :prefecture_name,  null: false,  limit: 10
      t.string  :area_code,        null: false,  limit: 2
      t.string  :area_name,        null: false,  limit: 20
      t.integer :status_id,        null: false,  limit: 1,   default: 0
      t.boolean :show_flag,        null: false,              default: false

      t.timestamps null: false
    end

    add_index :posts, :code
    add_index :posts, :order
    add_index :posts, :multi_town_flag
    add_index :posts, :multi_post_flag
    add_index :posts, :area_code
    add_index :posts, :status_id
    add_index :posts, :show_flag
  end
end
