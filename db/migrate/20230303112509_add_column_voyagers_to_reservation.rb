class AddColumnVoyagersToReservation < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :voyagers, :integer
  end
end
