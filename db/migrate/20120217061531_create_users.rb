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
			t.string :current_team
			t.string :current_level
			t.string :former_team
			t.string :former_level
			t.string :sport
			t.string :ppg
			t.string :rpg
			t.string :apg
			t.string :spg
			t.string :bpg
			t.string :season
			t.string :team
			t.string :games_played
			t.string :minutes_per_game
			t.string :field_goal_made
			t.string :field_goal_attempt
			t.string :three_point_made	
			t.string :three_point_attempt
		  t.string :free_throw_made
		  t.string :free_throw_attempt
			t.string :height
			t.integer :weight
			t.string :position
			t.string :video_title
			t.string :video_url_1
			t.string :video_url_2
			t.string :video_url_3

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
