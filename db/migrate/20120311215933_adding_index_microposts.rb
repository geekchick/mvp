class AddingIndexMicroposts < ActiveRecord::Migration
  def self.up
		add_index :microposts, [:user_id, :created_at]
  end

  def self.down
		remove_index :microposts
  end
end
