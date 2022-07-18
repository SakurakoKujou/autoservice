class Service < ApplicationRecord
  belongs_to :category
  belongs_to :performer
  has_many :orders , dependent: :destroy 
  validates :name , :category_id, :performer_id, presence: true
end
