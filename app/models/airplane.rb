class Airplane < ApplicationRecord
  validates :model, presence: true
  has_many :crew_members
end
