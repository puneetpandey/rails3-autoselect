class User < ActiveRecord::Base
  belongs_to :country
  belongs_to :state
  belongs_to :city

  validates :name, :presence => true
  validates :email, :presence => true
  validates :country_id, :presence => true
  validates :state_id, :presence => true
  validates :city_id, :presence => true

  def self.search(query)
    where("name like ?", "%#{query}%")
  end
end
