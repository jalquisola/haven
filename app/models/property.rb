class Property < ActiveRecord::Base
  extend FriendlyId
  enum status: [:pre_selling, :sale, :rent]
  enum property_type: [:condo, :landed, :office, :condo_hotel ]

  #friendly_id :name, use: :slugged
  friendly_id :slugged_candidates, use: :slugged

  validates_presence_of :name

  has_many :images
  has_many :floor_plans
  has_many :unit_types
  has_and_belongs_to_many :amenities
  has_many :comments, as: :commentable
  has_one :description
  accepts_nested_attributes_for :amenities
  belongs_to :agent
  has_many :property_features
  has_many :features, through: :property_features

  scope :enabled, -> { where(enabled: true) }
  scope :featured, -> { where("featured IS NOT NULL AND featured > 0") }
  default_scope{ where(enabled: true) }

  def slugged_candidates
    [
      :name,
      [:name, :short_address],
      [:name, :short_address, :id],
    ]
  end

  def should_generate_new_friendly_id?
    if !slug? || name_changed?
      true
    else
      false
    end
  end
end
