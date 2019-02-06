class Stroll < ApplicationRecord
	belongs_to :citie
	belongs_to :dog
	belongs_to :dogsitter
end
