class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :reply
			t.references :user
			t.references :micropost			

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
