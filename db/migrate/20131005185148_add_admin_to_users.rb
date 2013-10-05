class AddAdminToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :profile_id
    add_column :users, :admin, :boolean, :default => false
  end

end
