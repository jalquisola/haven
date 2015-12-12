class Property < ActiveRecord::Base
  include FriendlyId
  enum status: [:pre_selling, :sale, :rent]
  enum property_type: [:condo, :landed, :office, :condo_hotel ]

  friendly_id :name, use: :slugged

  validates_presence_of :name

  has_many :images
  has_many :floor_plans
  has_many :unit_types
  has_and_belongs_to_many :amenities
  has_many :comments, as: :commentable
  has_one :description
  accepts_nested_attributes_for :amenities
  belongs_to :agent

  def should_generate_new_friendly_id?
    name_changed?
  end
end
