class PropertyFeature < ActiveRecord::Base
  validates :property_id, presence: true
  validates :feature_id, presence: true
  validates_uniqueness_of :feature_id, scope: :property_id
  belongs_to :property
  belongs_to :feature
end
