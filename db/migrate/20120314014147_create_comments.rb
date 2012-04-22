class CreateComments < ActiveRecord::Migration
	def self.up
		create_table :comments do |t|
      t.text :content
			t.references :micropost
			t.references :user

      t.timestamps
    end
		add_index :comments, [:user_id, :created_at]
		add_index :comments, [:micropost_id, :created_at]
	end

  def self.down
		drop_table :comments
  end

end

