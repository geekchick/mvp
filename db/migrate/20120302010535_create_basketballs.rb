class CreateBasketballs < ActiveRecord::Migration
  def self.up
    create_table :basketballs do |t|
      t.string :ppg
      t.string :rpg
      t.string :apg
			t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :basketballs
  end
end
