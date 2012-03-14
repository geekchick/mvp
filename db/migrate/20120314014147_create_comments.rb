class CreateComments < ActiveRecord::Migration
		create_table :comments do |t|
      t.text :content
			t.references :micropost
			t.references :user
      t.timestamps
    end
		add_index :comments, [:user_id, :micropost_id]


  def self.down
		drop_table :comments
  end

  end

