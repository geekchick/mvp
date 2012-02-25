class CreateProfiles < ActiveRecord::Migration
  def self.up
    create_table :profiles do |t|
      t.string :name
      t.date :birthdate
      t.string :country
      t.string :sport
      t.string :height
      t.string :weight
      t.string :vid_url
      t.string :profile_image

      t.timestamps
    end
  end

  def self.down
    drop_table :profiles
  end
end
