class PlayersController < ApplicationController
  def index
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
    @set_1 = params[:set_1]
    @set_2 = params[:set_2]
    @set_3 = params[:set_3]

    @a = compute_winner(@player_1, @player_2, @set_1, @set_2, @set_3) and return
  end

  def show
  end

   protected 
    def compute_winner(player_1, player_2, set_1, set_2, set_3=[0,0])
      a = set_1[0] 
      b = set_1[1] 
      c = set_2[0] 
      d = set_2[1]
      e = set_3[0]
      f = set_3[1]

      if (a + c + e) > (b + d + f) then render :text => "winner is #{player_1}" and return
      elsif (a + c + e) < (b + d + f) then render :text => "winner is #{player_2}" and return
      else
        render :text => "sorry man, there're no draws in tennis" and return
      end
    end
end
