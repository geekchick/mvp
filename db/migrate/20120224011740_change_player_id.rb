class ChangePlayerId < ActiveRecord::Migration
  def self.up
		rename_column :players, :id, :player_id
  end
	

  def self.down
		rename_column :players, :player_id, :id
  end
end
