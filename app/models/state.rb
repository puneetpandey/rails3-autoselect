class State < ActiveRecord::Base
  has_many :cities
  has_one :user
  belongs_to :country
end
