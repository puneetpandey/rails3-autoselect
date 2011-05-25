class CreateCities < ActiveRecord::Migration
  def self.up
    create_table :cities do |t|
      t.string :name
	  t.integer :state_id
      t.timestamps
    end
	ap = State.find_by_name("Andra Pradesh")
	City.create!(:name => "Hyderabad", :state_id => ap.id)
	kar = State.find_by_name("Karnataka")
	City.create!(:name => "Bangalore", :state_id => kar.id)
	mp = State.find_by_name("Madhya Pradesh")
	City.create!(:name => "Indore", :state_id => mp.id)
	mh = State.find_by_name("Maharastra")
	City.create!(:name => "Mumbai", :state_id => mh.id)
	raj = State.find_by_name("Rajasthan")
	City.create!(:name => "Jaipur", :state_id => raj.id)
  end

  def self.down
    drop_table :cities
  end
end
