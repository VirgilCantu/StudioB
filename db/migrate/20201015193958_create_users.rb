class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :location
      t.string :bio
      t.boolean :can_travel
      t.string :picture
      t.string :stage_name
      t.belongs_to :genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
