class CreateStates < ActiveRecord::Migration
  def self.up
    create_table :states do |t|
      t.string :name
	  t.integer :country_id
      t.timestamps
    end
	State.create!(:name => "Andra Pradesh", :country_id => "1")
	State.create!(:name => "Karnataka", :country_id => "1")
	State.create!(:name => "Madhya Pradesh", :country_id => "1")
	State.create!(:name => "Maharastra", :country_id => "1")
	State.create!(:name => "Rajasthan", :country_id => "1")

	State.create!(:name => "Colombo", :country_id => "2")

	State.create!(:name => "California", :country_id => "3")
	State.create!(:name => "Florida", :country_id => "3")
	State.create!(:name => "New Jersey", :country_id => "3")
	State.create!(:name => "New York", :country_id => "3")
	State.create!(:name => "Washington", :country_id => "3")

	State.create!(:name => "London", :country_id => "4")
	State.create!(:name => "Lancaster", :country_id => "3")
  end

  def self.down
    drop_table :states
  end
end
