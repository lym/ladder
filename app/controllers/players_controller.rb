class PlayersController < ApplicationController
  def index
    @players = Player.all
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

  def find_winner
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
    @set_1 = params[:set_1].split(',').map(&:to_i)
    @set_2 = params[:set_2].split(',').map(&:to_i)
    @set_3 = params[:set_3].split(',').map(&:to_i)

    a = @set_1[0].to_i
    b = @set_1[1].to_i
    c = @set_2[0].to_i
    d = @set_2[1].to_i
    e = @set_3[0].to_i
    f = @set_3[1].to_i

    if ((a + c + e) > (b + d + f)) then 
      @winner = @player_1
    elsif ((a + c + e) < (b + d + f)) then 
      @winner = @player_2
    else
      @winner = "draw"
    end
  end

  def show
  end

   protected 
    def compute_winner(player_1, player_2, set_1, set_2, set_3=[0,0])
    end
end
