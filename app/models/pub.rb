class Pub < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :location, presence: true
end
