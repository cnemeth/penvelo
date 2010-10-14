class CreateSponsors < ActiveRecord::Migration
  def self.up
    create_table :sponsors do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :url
      t.string :logo_url
      t.string :contact_name
      t.string :contact_phone
      t.string :contact_email
      t.integer :rank
      t.boolean :active
      t.date :active_since
      t.text :slogan
      t.text :description
      t.integer :sponsor_type_id

      t.timestamps
    end

    add_index :sponsors, :name
    add_index :sponsors, :rank
    add_index :sponsors, :sponsor_type_id
  end

  def self.down
    drop_table :sponsors
  end
end

