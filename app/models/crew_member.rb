class CrewMember < ApplicationRecord
  belongs_to :airplane

  validates :name, presence: true
end
