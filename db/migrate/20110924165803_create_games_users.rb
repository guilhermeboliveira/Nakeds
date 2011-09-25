class CreateGamesUsers < ActiveRecord::Migration
  def self.up
    create_table :games_users do |t|
      t.references :user
      t.references :game

      t.timestamps
    end
  end

  def self.down
    drop_table :games_users
  end
end
