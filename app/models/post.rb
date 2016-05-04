class Post < ActiveRecord::Base
  belongs_to :city
  belongs_to :prefecture
end
