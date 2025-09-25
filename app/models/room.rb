class Room < ApplicationRecord
    has_many :reservation

    validates :number, :room_type, :price, :status, presence: true
    validates :price, numericality: { greater_than_or_equal_to: 0 }
end
