class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
			t.string :email
			t.string :country
			t.string :gender
			t.string :bio
			t.date   :birthdate
			t.string :role
			t.string :sport
			t.string :ppg
			t.string :rpg
			t.string :apg
			t.string :spg
			t.string :height
			t.integer :weight
			t.string :position
			t.string :video_title
			t.string :video_url

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
