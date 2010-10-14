class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :street
      t.string :city, :null => false, :limit => 40
      t.string :state, :null => false, :limit => 40
      t.string :zip, :limit => 10
      t.string :country
      t.string :primary_phone, :null => false, :limit => 40
      t.string :secondary_phone
      t.string :email, :null => false, :limit => 40
      t.string :im_handle
      t.references :im_type
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end

