class Bicyclepost < ApplicationRecord
	belongs_to :bicyclecategory

	has_many :order
end
