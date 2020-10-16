class CreateInstruments < ActiveRecord::Migration[6.0]
  def change
    create_table :instruments do |t|
      t.string :name
      t.string :brand
      t.string :category
      t.string :inst_type
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
