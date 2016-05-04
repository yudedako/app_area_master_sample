class CreateCityAreaGroups < ActiveRecord::Migration
  def change
    create_table :city_area_groups do |t|
      t.references :city,        null: false,  index: true
      t.references :area_group,  null: false,  index: true
    end
  end
end
