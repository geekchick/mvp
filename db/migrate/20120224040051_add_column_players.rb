class AddColumnPlayers < ActiveRecord::Migration
  def self.up
			add_column :players, :identity_id, :integer
  end

  def self.down
			remove_column :players, :identity_id, :integer
  end
end
