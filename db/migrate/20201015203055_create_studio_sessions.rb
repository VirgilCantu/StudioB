class CreateStudioSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :studio_sessions do |t|
      t.datetime :session_time
      t.integer :duration
      t.string :special_req
      t.integer :cost
      t.belongs_to :studio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
