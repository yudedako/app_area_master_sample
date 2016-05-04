class Prefecture < ActiveRecord::Base
  has_many :cities
  has_many :posts
  has_many :area_groups
end
