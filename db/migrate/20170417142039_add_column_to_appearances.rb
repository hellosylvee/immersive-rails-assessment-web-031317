class AddColumnToAppearances < ActiveRecord::Migration[5.0]
  def change
    add_column :appearances, :episode_id, :integer
  end
end
