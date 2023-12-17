class Airmeasure < ApplicationRecord
  validates :timestamp, presence: true
  validates :measure_float, presence: true, numericality: true
  validates :room_name, presence: true
  validates :measure_type, presence: true
end
