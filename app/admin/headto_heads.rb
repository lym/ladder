ActiveAdmin.register HeadtoHead do
  index do
    column :player_1
    column :player_2
    column :total_games_played
    column :player_1_wins
    column :player_2_wins
    default_actions
  end 
end
