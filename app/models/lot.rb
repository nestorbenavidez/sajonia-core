class Lot < ApplicationRecord
  has_one :certification
  has_one :quality
  has_one :variety
  has_many :damages
  has_one :procedence
  belongs_to :weight_detail
end
