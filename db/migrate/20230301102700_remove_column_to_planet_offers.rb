class RemoveColumnToPlanetOffers < ActiveRecord::Migration[7.0]
  def change
    remove_column :planet_offers, :image
    remove_column :planet_offers, :description
  end
end
