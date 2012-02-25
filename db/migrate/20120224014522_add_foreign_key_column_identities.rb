class AddForeignKeyColumnIdentities < ActiveRecord::Migration
  def self.up
		add_column :identities, :player_id, :integer
  end

  def self.down
		remove_column :identities, :player_id
  end
end
