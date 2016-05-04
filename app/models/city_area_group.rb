class CityAreaGroup < ActiveRecord::Base
  belongs_to :city
  belongs_to :area_group
end
