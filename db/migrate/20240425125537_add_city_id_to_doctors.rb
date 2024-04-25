class AddCityIdToDoctors < ActiveRecord::Migration[7.1]
  def change
    add_reference :doctors, :city, foreign_key: true
  end
end

