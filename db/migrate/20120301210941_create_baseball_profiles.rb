class CreateBaseballProfiles < ActiveRecord::Migration
  def self.up
    create_table :baseball_profiles do |t|
      t.string :hits
      t.string :runs
      t.string :homeruns
			t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :baseball_profiles
  end
end
