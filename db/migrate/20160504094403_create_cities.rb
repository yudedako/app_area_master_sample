class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.references :prefecture,  null: false,  index: true

      t.string  :code,             null: false,  limit: 5
      t.string  :name,             null: false,  limit: 50
      t.string  :name_kana,        null: true,   limit: 100
      t.integer :order,            null: false,              default: 0
      t.string  :prefecture_name,  null: false,  limit: 10
      t.string  :area_code,        null: false,  limit: 2
      t.string  :area_name,        null: false,  limit: 20
      t.integer :status_id,        null: false,  limit: 1,   default: 0
      t.boolean :show_flag,        null: false,              default: false

      t.timestamps null: false
    end

    add_index :cities, :code
    add_index :cities, :order
    add_index :cities, :area_code
    add_index :cities, :status_id
    add_index :cities, :show_flag
  end
end
