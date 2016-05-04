class CreateAreaOriginals < ActiveRecord::Migration
  def change
    create_table :area_originals do |t|
      t.string  :city_code,             null: false,  limit: 5
      t.string  :old_post_code,         null: true,   limit: 5
      t.string  :post_code,             null: false,  limit: 7
      t.string  :prefecture_name_kana,  null: true,   limit: 20
      t.string  :city_name_kana,        null: true,   limit: 100
      t.string  :town_name_kana,        null: true,   limit: 500
      t.string  :prefecture_name,       null: false,  limit: 10
      t.string  :city_name,             null: false,  limit: 50
      t.string  :town_name,             null: true,   limit: 250
      t.boolean :multi_town_flag,       null: false,              default: false
      t.boolean :address_flag,          null: false,              default: false
      t.boolean :chome_flag,            null: false,              default: false
      t.boolean :multi_post_flag,       null: false,              default: false
      t.integer :update_status,         null: false,  limit: 1,   default: 0
      t.integer :reason_status,         null: false,  limit: 1,   default: 0
    end

    add_index :area_originals, :multi_town_flag
    add_index :area_originals, :address_flag
    add_index :area_originals, :chome_flag
    add_index :area_originals, :multi_post_flag
    add_index :area_originals, :update_status
    add_index :area_originals, :reason_status
  end
end
