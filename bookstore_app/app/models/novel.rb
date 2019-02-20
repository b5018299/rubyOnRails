class Novel < ApplicationRecord
	belongs_to :author, required: false
	belongs_to :genre, required: false
	belongs_to :publisher, required: false

	validates :Title, :isbn, :Format, :Genre_id,
	:Publisher_id, :Author_id, :Price, :Pages, :Publication,
	:Description, presence: true
end