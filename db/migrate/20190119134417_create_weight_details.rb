class CreateWeightDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :weight_details do |t|
      t.references :reception_point
      t.references :reception_status
      t.string :harvest
      t.references :client
      t.datetime :reception_date
      t.references :type_of_vehicle
      t.string :plate
      t.references :driver
      t.string :remission_number
      t.string :procedence
      t.string :receipt
      t.string :waste_in_transit
      t.string :pledgee

      t.timestamps
    end
  end
end
