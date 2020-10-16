class CreateEquipment < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment do |t|
      t.string :name
      t.string :brand
      t.string :category
      t.string :eq_type
      t.belongs_to :studio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
