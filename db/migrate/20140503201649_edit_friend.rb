class EditFriend < ActiveRecord::Migration
  def change
    rename_table :friendship, :friendships
  end
end
