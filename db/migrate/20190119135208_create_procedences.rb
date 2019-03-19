class CreateProcedences < ActiveRecord::Migration[5.2]
  def change
    create_table :procedences do |t|
      t.string :name
      t.references :client

      t.timestamps
    end
  end
end
