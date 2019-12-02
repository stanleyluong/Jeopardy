class Round < ApplicationRecord
    has_many :rounds_hosts
    has_many :categories
    has_many :clues, through: :categories
    #needs additional relationships
end
