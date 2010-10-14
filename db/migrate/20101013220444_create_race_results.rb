class CreateRaceResults < ActiveRecord::Migration
  def self.up
    create_table :race_results do |t|
      t.string :race
      t.date :date
      t.integer :placement
      t.integer :field_size
      t.references :race_discipline
      t.references :race_category
      t.references :user

      t.timestamps
    end

    add_index :race_results, :race
    add_index :race_results, :date
    add_index :race_results, :placement
    add_index :race_results, :race_discipline_id
    add_index :race_results, :race_category_id
    add_index :race_results, :user_id

  end

  def self.down
    drop_table :race_results
  end
end

