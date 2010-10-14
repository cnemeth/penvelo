class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :first_name, :null => false, :limit => 40
      t.string :middle_initial
      t.string :last_name, :null => false, :limit => 40
      t.date :date_of_birth
      t.string :gender, :null => false, :default => 'Male'
      t.string :user_image_url
      t.string :image_gallery_url
      t.date :member_since, :null => false
      t.bolean :active, :null => false, :default => true
      t.bolean :performance_team_member, :default => false
      t.string :usac_license, :limit => 20
      t.text :profile
      t.string :login, :null => false
      t.string :crypted_password, :null => false
      t.string :password_salt, :null => false
      t.string :persistence_token, :null => false
      t.string :single_access_token, :null => false
      t.string :perishable_token, :null => false
      t.integer :login_count, :null => false, :default => 0
      t.integer :failed_login_count, :null => false, :default => 0
      t.datetime :last_request_at
      t.datetime :last_login_at
      t.datetime :current_login_at
      t.string :last_login_ip
      t.string :current_login_ip

      t.timestamps
    end

    add_index :users, :last_name
    add_index :users, :login

  end

  def self.down
    drop_table :users
  end
end

