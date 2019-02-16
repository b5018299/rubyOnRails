class Author < ApplicationRecord
	has_many :novels
	validates :Fname, :Lname, :Bio, presence: true
	#validates :Fname, 	presence: true
	#validates :Lname, 	presence: true
	#validates :Bio, 	presence: true
end
