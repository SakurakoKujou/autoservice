class Order < ApplicationRecord
  belongs_to :service
  validates :nameOrder , :service_id, presence: true
end
