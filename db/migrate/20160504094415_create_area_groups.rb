class CreateAreaGroups < ActiveRecord::Migration
  def change
    create_table :area_groups do |t|
      t.references :prefecture,  null: false,  index: true

      t.string  :name,             null: false,  limit: 100
      t.integer :order,            null: false,              default: 0
      t.string  :prefecture_name,  null: false,  limit: 10
      t.string  :area_code,        null: false,  limit: 2
      t.string  :area_name,        null: false,  limit: 20
      t.integer :status_id,        null: false,  limit: 1,   default: 0

      t.timestamps null: false
    end

    add_index :area_groups, :order
    add_index :area_groups, :area_code
    add_index :area_groups, :status_id
  end
end
