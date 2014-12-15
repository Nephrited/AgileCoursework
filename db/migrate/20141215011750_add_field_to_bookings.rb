class AddFieldToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :field, :string
  end
end
