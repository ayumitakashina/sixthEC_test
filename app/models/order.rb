class Order < ApplicationRecord
	belongs_to :user
	has_many :bicycleposts

	validates :bicyclepost_id, presence: true
	validates :name, presence: true
	validates :email, presence: true
end
