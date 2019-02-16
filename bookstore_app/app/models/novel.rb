class Novel < ApplicationRecord
	belongs_to :author, required: false
	belongs_to :genre, required: false
	belongs_to :publisher, required: false
end
