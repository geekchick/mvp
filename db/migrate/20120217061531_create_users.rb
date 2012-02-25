class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users, {:primary_key => :user_id} do |t|
      t.string :provider
      t.string :uid
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
