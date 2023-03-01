class AddColumnToPlanetOffers < ActiveRecord::Migration[7.0]
  def change
    add_column :planet_offers, :gravite, :float
    add_column :planet_offers, :superficie, :float
    add_column :planet_offers, :rayon, :float
  end
end
