class Planet < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :missions, dependent: :destroy
  has_many :spaceshifts, through: :missions
end
