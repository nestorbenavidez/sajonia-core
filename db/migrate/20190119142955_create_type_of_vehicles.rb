class CreateTypeOfVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :type_of_vehicles do |t|
      t.string :name

      t.timestamps
    end
  end
end
