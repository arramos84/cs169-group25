class AddFbIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :integer, :fb_id
  end
end
