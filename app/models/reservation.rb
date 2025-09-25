class Reservation < ApplicationRecord
    belongs_to :guest
    belongs_to :room
    has_many :service_usages

    validates :guest_id, :room_id, :check_in, :check_out, :status, :adults, presence: true #I didnt add children because it can be 0
    validates :code, presence: true, uniqueness: true
end
