class AddStudioManagerToStudios < ActiveRecord::Migration[6.0]
  def change
    add_column :studios, :studio_manager_id, :integer
  end
end
 