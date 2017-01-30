class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.boolean :won?, default: false
      t.integer :player_id

      t.timestamps
    end
  end
end
