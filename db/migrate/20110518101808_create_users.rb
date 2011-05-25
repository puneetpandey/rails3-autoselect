class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :country_id
      t.integer :state_id
      t.integer :city_id
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
