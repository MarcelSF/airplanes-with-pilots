class Airplane < ApplicationRecord
  validates :model, presence: true
  has_many :crew_members

  acts_as_taggable_on :tags
  acts_as_taggable_on :categories, :engines

  CATEGORIES = ['Military', 'Civilian', 'Experimental']


  scope :filter_by_category, -> (category) { where category: category }
  scope :filter_by_speed, -> (speed) { where speed: speed }
  scope :filter_by_engines, -> (engines) { where engines: engines }
end
