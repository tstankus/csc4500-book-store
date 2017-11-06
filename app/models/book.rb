class Book < ApplicationRecord
	belongs_to :order
	belongs_to :invoice
end
