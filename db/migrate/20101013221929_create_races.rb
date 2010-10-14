class CreateRaces < ActiveRecord::Migration
  def self.up
    create_table :races do |t|
      t.string :name, :null => false
      t.date :date, :null => false
      t.time :time
      t.string :place, :null => false
      t.string :organizer
      t.string :start_location
      t.string :finish_location
      t.text :description
      t.string :link_to_website
      t.string :link_to_registration
      t.references :race_discipline

      t.timestamps
    end

    add_index :races, :name
    add_index :races, :date
    add_index :races, :place
    add_index :races, :race_discipline_id

  end

  def self.down
    drop_table :races
  end
end

