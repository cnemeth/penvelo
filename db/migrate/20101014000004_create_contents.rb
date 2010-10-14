class CreateContents < ActiveRecord::Migration
  def self.up
    create_table :contents do |t|
      t.string :title, :null => false
      t.text :entry
      t.string :tags
      t.references :content_type

      t.timestamps
    end

    add_index :contents, :title
    add_index :contents, :content_type_id
  end

  def self.down
    drop_table :contents
  end
end

