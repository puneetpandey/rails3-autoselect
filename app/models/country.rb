class Country < ActiveRecord::Base
  has_many :states
  has_one :user
end
