class Genre < ApplicationRecord
	has_many :novels
	validates :Name, presence: true, length: { minimum: 3 }
end
