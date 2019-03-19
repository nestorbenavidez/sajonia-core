class CreateLots < ActiveRecord::Migration[5.2]
  def change
    create_table :lots do |t|
      t.string :name
      t.references :imperfection
      t.references :damage
      t.references :quality
      t.references :variety
      t.references :certification

      t.timestamps
    end
  end
end
