class CreateSpots < ActiveRecord::Migration
  def self.up
    create_table :spots do |t|
      t.integer :profile_id
      t.integer :duration
      t.integer :position
      t.datetime :valid_from
      t.datetime :valid_to
      t.integer :status

      t.timestamps
    end
  end

  def self.down
    drop_table :spots
  end
end
