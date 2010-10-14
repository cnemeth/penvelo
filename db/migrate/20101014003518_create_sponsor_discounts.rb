class CreateSponsorDiscounts < ActiveRecord::Migration
  def self.up
    create_table :sponsor_discounts do |t|
      t.text :discount
      t.integer :sponsor_id

      t.timestamps
    end

    add_index :sponsor_discounts, :sponsor_id
  end

  def self.down
    drop_table :sponsor_discounts
  end
end

