class AreaGroup < ActiveRecord::Base
  has_many :cities, through: :city_area_groups
  belongs_to :prefecture
end
