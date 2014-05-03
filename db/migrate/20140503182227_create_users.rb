class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.timestamps
      t.float :longitude
      t.float :latitude
      t.string :address
    end
  end
end
