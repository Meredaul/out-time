class Pub < ApplicationRecord
  validates :name, :location, presence: true
end
