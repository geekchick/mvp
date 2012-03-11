class AddIndexComments < ActiveRecord::Migration
  def self.up
		add_index :comments, [:user_id, :created_at]
  end

  def self.down
		remove_index :comments
  end
end
