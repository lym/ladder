ActiveAdmin::Dashboards.build do
  section "Pending Matches" do
    table_for Match.where('match_date > ? and match_date < ?', Time.now, 1.week.from_now) do |t|
      t.column("Challenger") { |match| match.challenger} 
      t.column("Opponent") { |match| match.opponent }
      t.column("Day and Time") { |match| match.match_date }
    end
  end

  section "Top 10 players" do
    table_for Player.where('ladder_rank < ?', 11) do |t|
      t.column("Position") { |player| player.ladder_rank }
      t.column("Name") { |player| player.first_name + player.last_name }
    end
  end
end
