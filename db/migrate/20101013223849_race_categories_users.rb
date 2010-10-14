class RaceCategoriesUsers < ActiveRecord::Migration
  def self.up
    create_table "race_categories_users", :id => false, :force => true do |t|
      t.references  :user
      t.references  :race_category

      t.timestamps
    end

    add_index :race_categories_users, :user_id
    add_index :race_categories_users, :race_category_id
  end

  def self.down
    drop_table :race_categories_users
  end
end

