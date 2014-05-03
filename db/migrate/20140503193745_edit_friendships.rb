class EditFriendships < ActiveRecord::Migration
  def change
    rename_table :friendships, :friendship
  end
end
