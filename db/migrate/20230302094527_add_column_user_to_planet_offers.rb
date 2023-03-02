class AddColumnUserToPlanetOffers < ActiveRecord::Migration[7.0]
  def change
    add_reference :planet_offers, :user, null: true, foreign_key: true
  end
end
