class CreateFeedbacks < ActiveRecord::Migration
  def self.up
    create_table :feedbacks do |t|
      t.text :feedback
      t.references :feedback_type

      t.timestamps
    end

    add_index :feedbacks, :feedback_type_id
  end

  def self.down
    drop_table :feedbacks
  end
end

