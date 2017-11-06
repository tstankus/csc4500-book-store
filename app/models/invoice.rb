class Invoice < ApplicationRecord
	has_one :book
	has_one :employee
	has_one :customer
	has_one :order
end
