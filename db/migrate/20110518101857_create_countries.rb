class CreateCountries < ActiveRecord::Migration
  def self.up
    create_table :countries do |t|
      t.string :name
      t.timestamps
    end
	Country.create!(:name => "India")
	Country.create!(:name => "Sri Lanka")
	Country.create!(:name => "USA")
	Country.create!(:name => "UK")
  end

  def self.down
    drop_table :countries
  end
end
