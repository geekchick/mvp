class RemovePlayerId < ActiveRecord::Migration
  def self.down
		remove_column :identities, :player_id
  end
end
