class CreateRoundsHosts < ActiveRecord::Migration[5.2]
  def change
    create_table :rounds_hosts do |t|
      t.integer :round_id
      t.integer :host_id

      t.timestamps
    end
  end
end
