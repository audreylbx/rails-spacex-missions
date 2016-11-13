class Mission < ApplicationRecord
  belongs_to :planet
  belongs_to :spaceshift
  validates_uniqueness_of :spaceshift_id, :scope => :planet_id
end
