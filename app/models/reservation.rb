class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :planet_offer

  VOYAGERS = 1..20
end
