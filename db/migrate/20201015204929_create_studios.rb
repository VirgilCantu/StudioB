class CreateStudios < ActiveRecord::Migration[6.0]
  def change
    create_table :studios do |t|
      t.string :name
      t.string :location
      t.integer :hourly_rate
      t.string :features
      t.string :description
      t.string :picture

      t.timestamps
    end
  end
end
