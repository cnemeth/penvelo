class CreateRides < ActiveRecord::Migration
  def self.up
    create_table :rides do |t|
      t.string :name, :null => false
      t.string :days
      t.string :location
      t.time :time
      t.string :start_point
      t.string :end_point
      t.text :description
      t.decimal :distance, :precision => 5, :scale => 2
      t.integer :elevation
      t.string :link_to_pdf
      t.string :link_to_map
      t.integer :ride_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :rides
  end
end

