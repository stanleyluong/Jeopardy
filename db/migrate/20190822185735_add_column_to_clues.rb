class AddColumnToClues < ActiveRecord::Migration[5.2]
  def change
    add_column :clues, :has_been_answered, :boolean, default:false
  end
end
