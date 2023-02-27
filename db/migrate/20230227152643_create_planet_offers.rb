class CreatePlanetOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :planet_offers do |t|
      t.string :name
      t.text :description
      t.string :image
      t.float :price
      t.string :title
      t.string :planet_picture
      t.string :location

      t.timestamps
    end
  end
end
