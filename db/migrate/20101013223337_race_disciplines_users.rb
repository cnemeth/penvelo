class RaceDisciplinesUsers < ActiveRecord::Migration
  def self.up
     create_table "race_disciplines_users", :id => false, :force => true do |t|
      t.references  :user
      t.references  :race_discipline

      t.timestamps
    end

    add_index :race_disciplines_users, :user_id
    add_index :race_disciplines_users, :race_discipline_id
  end

  def self.down
    drop_table :race_disciplines_users
  end
end

