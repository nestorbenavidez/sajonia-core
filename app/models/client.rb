class Client < ApplicationRecord
  has_one :client_group
  has_one :procedence
  belongs_to :weight_detail
end
