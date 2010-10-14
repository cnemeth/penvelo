class CreateRaceDisciplines < ActiveRecord::Migration
  def self.up
    create_table :race_disciplines do |t|
      t.string :name, :null => false, :limit => 40

      t.timestamps
    end
  end

  def self.down
    drop_table :race_disciplines
  end
end

