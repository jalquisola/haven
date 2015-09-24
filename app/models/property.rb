class Property < ActiveRecord::Base
  has_many :images
  has_many :unit_types
  has_and_belongs_to_many :amenities
  has_many :comments, as: :commentable
  has_one :description
  accepts_nested_attributes_for :amenities
  belongs_to :agent
end
