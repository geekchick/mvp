class AddIndexMicroposts < ActiveRecord::Migration
  def self.up
		add_index :microposts, [:user_id, :created_at]
  end

  def self.down
		add_index :microposts, [:user_id, :created_at]
  end
end
