class Performer < ApplicationRecord
    has_many :services , dependent: :destroy    
    validates :firstName, :lastName , presence: true
end
