class CreateFeedbackTypes < ActiveRecord::Migration
  def self.up
    create_table :feedback_types do |t|
      t.string :name, :null => false, :limit => 40

      t.timestamps
    end
  end

  def self.down
    drop_table :feedback_types
  end
end

