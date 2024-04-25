class AddCityIdToAppointments < ActiveRecord::Migration[7.1]
  def change
    add_reference :appointments, :city, foreign_key: true, null: true
  end
end
