class Rover < ApplicationRecord
  has_one_attached :file

  validates :result, presence: true
end
