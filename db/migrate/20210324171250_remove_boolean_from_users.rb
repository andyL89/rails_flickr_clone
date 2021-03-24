class RemoveBooleanFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :boolean
  end
end
