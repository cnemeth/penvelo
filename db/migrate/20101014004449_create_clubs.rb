class CreateClubs < ActiveRecord::Migration
  def self.up
    create_table :clubs do |t|
      t.string :name
      t.string :logo_url
      t.text :headline
      t.text :mission
      t.text :description
      t.integer :year
      t.string :location
      t.string :phone
      t.string :email
      t.string :url
      t.text :legal
      t.text :privacy
      t.text :copyright
      t.string :webmaster_email

      t.timestamps
    end
  end

  def self.down
    drop_table :clubs
  end
end
