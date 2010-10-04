class CreateFeedbacks < ActiveRecord::Migration
  def self.up
    create_table :feedbacks do |t|
      t.string :username
      t.text :message
      t.integer :status

      t.timestamps
    end
  end

  def self.down
    drop_table :feedbacks
  end
end
