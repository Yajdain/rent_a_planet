class AddColumnPlanetToReservations < ActiveRecord::Migration[7.0]
  def change
    add_reference :reservations, :planet_offer, null: false, foreign_key: true
  end
end
