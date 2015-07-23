class Property < ActiveRecord::Base
  has_many :images
  has_and_belongs_to_many :amenities
end
