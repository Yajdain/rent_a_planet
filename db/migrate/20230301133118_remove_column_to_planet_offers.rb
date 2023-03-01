class RemoveColumnToPlanetOffers < ActiveRecord::Migration[7.0]
  def change
    remove_column :planet_offers, :planet_picture
  end
end
