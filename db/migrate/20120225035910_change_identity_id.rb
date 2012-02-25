class ChangeIdentityId < ActiveRecord::Migration
  def self.up
		rename_column :identities,:id, :identity_id
  end

  def self.down
		rename_column :identities, :identity_id, :id
  end
end

