class Invoice < ApplicationRecord
	has_one :user
	has_one :order
end
