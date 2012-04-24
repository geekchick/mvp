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
			t.float  :ppg
			t.float :rpg
			t.float :apg
			t.float :spg
			t.float :bpg
			t.string :season
			t.string :team
			t.float :games_played
			t.float :minutes_per_game
			t.float :field_goal_made
			t.float :field_goal_attempt
			t.float :three_point_made	
			t.float :three_point_attempt
		  t.float :free_throw_made
		  t.float :free_throw_attempt
			t.string :height
			t.float :weight
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
