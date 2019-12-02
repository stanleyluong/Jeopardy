class Category < ApplicationRecord
    has_many :clues
    belongs_to :round
end
