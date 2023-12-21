class CreateGameRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :game_records do |t|
      t.string :game_type
      t.string :player
      t.integer :starting_score
      t.integer :number_of_darts

      t.timestamps
    end
  end
end
