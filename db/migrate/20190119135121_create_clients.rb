class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.references :client_group
      t.string :ruc
      t.string :pais
      t.string :direccion_postal
      t.datetime :activation_date

      t.timestamps
    end
  end
end
