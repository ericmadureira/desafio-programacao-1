class Purchase < ActiveRecord::Base
	belongs_to :client

	has_and_belongs_to_many :merchants
	has_and_belongs_to_many :items
end
