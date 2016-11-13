class Spaceshift < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  has_many :missions
  default_scope -> { order(name: :ASC) }
end
