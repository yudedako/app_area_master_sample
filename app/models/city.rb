class City < ActiveRecord::Base
  has_many :posts
  has_many :area_groups, through: :city_area_groups
  belongs_to :prefecture
end
