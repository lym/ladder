class HeadtoHead < ActiveRecord::Base
  attr_accessible :player_1, :player_1_wins, :player_2, :player_2_wins, :total_games_played
end
