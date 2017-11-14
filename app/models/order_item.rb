class order_item < ApplicationRecord
	belongs_to :order
	belongs_to :book
end