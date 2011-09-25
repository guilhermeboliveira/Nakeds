class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.string :name
      t.string :responsable
      t.date :day_week
      t.time :hour_start
      t.time :hour_end
      t.string :place

      t.timestamps
    end
  end

  def self.down
    drop_table :games
  end
end
