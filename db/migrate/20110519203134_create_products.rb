class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.integer :category_id
      t.string :name
      t.decimal :price
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
