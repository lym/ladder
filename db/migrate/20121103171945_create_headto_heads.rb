class CreateHeadtoHeads < ActiveRecord::Migration
  def change
    create_table :headto_heads do |t|
      t.string :player_1
      t.string :player_2
      t.integer :total_games_played
      t.integer :player_1_wins
      t.integer :player_2_wins

      t.timestamps
    end
  end
end
