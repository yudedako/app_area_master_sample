class CreatePrefectures < ActiveRecord::Migration
  def change
    create_table :prefectures do |t|
      t.string  :code,        null: false,  limit: 2
      t.string  :name,        null: false,  limit: 10
      t.string  :name_kana,   null: false,  limit: 20
      t.string  :short_name,  null: false,  limit: 10
      t.string  :area_code,   null: false,  limit: 2
      t.string  :area_name,   null: false,  limit: 20
      t.integer :area_order,  null: false,              default: 0
    end

    add_index :prefectures, :code
    add_index :prefectures, :area_code
    add_index :prefectures, :area_order
  end
end
