class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
			t.date   :birthdate
			t.string :role
			t.string :sport

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
