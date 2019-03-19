class CreateCertifications < ActiveRecord::Migration[5.2]
  def change
    create_table :certifications do |t|
      t.string :name
#images 
      t.timestamps
    end
  end
end
