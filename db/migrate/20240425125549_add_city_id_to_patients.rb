class AddCityIdToPatients < ActiveRecord::Migration[7.1]
  def change
    add_reference :patients, :city, foreign_key: true, null: true
  end
end

