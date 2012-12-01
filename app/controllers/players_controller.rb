class PlayersController < ApplicationController
  def index
    @players = Player.all
    @users = User.all
  end


  def create
  end

  def new
  end

  def edit
    @player = Player.new
  end

  def destroy
  end

  def get_challenge
    @challenger = Params[:challenger]
  end
  
  def scheduled_matches
    @matches = Match.all
  end

  def get_comparisons
    @head_to_heads = HeadtoHead.all
  end

  def find_winner
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
    @set_1 = params[:set_1].split(',').map(&:to_i)
    @set_2 = params[:set_2].split(',').map(&:to_i)
    @set_3 = params[:set_3].split(',').map(&:to_i)
      #@player_one_rank = Player.find_by_first_name(@player_1).ladder_rank

    a = @set_1[0].to_i
    b = @set_1[1].to_i
    c = @set_2[0].to_i
    d = @set_2[1].to_i
    e = @set_3[0].to_i
    f = @set_3[1].to_i

    if ((a + c + e) > (b + d + f)) then @winner = @player_1; @loser = @player_2
    elsif ((a + c + e) < (b + d + f)) then @winner = @player_2; @loser = @player_1
    else  @winner = nil; @loser = nil
    end
  end

  def show
  end

  def rules
  end

  def check_stats
  end

    def update_rank
      @player_one_rank = Player.find_by_first_name(@player_1).ladder_rank
      @player_two_rank = Player.find_by_first_name(@player_2).ladder_rank
      if @player_one_rank > @player_two_rank && @player_1 == @winner
        @new_player_one_rank = @player_one_rank
        @new_player_two_rank = @player_two_rank
      elsif @player_one_rank > @player_two_rank && @player_one != @winner
        @new_player_one_rank = @player_one_rank - 1
        @new_player_two_rank = @player_two_rank + 4
      end
    end
end
