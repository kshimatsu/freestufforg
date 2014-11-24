class Item < ActiveRecord::Base
  has_many :media
  has_many :messages
end
