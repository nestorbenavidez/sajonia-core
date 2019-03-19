class WeightDetail < ApplicationRecord
  has_one :pledgee
  has_one :reception_point
  has_one :reception_status
  has_one :type_of_vehicle
  has_many :lots
  has_one :client
end
