class RemoveIdentityId < ActiveRecord::Migration
  def self.down
		rename_column :identities, :identity_id, :id
  end
end
