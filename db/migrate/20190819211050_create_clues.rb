class CreateClues < ActiveRecord::Migration[5.2]
  def change
    create_table :clues do |t|
      t.integer :value
      t.string :question 
      t.string :answer
      t.integer :category_id
      t.timestamps
    end
  end
end
