require 'rest-client'
require 'json'
require 'byebug'
class Clue < ApplicationRecord
    belongs_to :category
    
end


#use the category title to create a new Category object in your database (i.e. Category.create)
#use the newly created category in your iteration to create new clues (i.e. Clue.create) that also include the new categories ID #.