class CreateProfiles < ActiveRecord::Migration
  def self.up
    create_table :profiles do |t|
      t.string :login
      t.string :nk_id
      t.string :url
      t.string :email
      t.boolean :tos
      t.integer :status

      t.timestamps
    end
  end

  def self.down
    drop_table :profiles
  end
end
