class Spent < ApplicationRecord
	belongs_to :user
	validates_presence_of :value, :date, :description
end
