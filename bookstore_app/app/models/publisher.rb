class Publisher < ApplicationRecord
	has_many :novels
	validates :Name, :Country, presence: true
end