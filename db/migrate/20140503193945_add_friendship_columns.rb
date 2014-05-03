class AddFriendshipColumns < ActiveRecord::Migration
  def change
    add_column :friendship, :friend_id, :integer
  end
end
