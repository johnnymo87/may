class ChangeUserType < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.remove :type
      t.integer :profile_id, default: '3'
    end
  end
end
