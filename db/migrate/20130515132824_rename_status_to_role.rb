class RenameStatusToRole < ActiveRecord::Migration
  def change
    rename_table :statuses, :roles
    rename_column :answers, :status_id, :role_id
  end
end
