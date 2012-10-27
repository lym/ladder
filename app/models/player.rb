class Player < ActiveRecord::Base
  attr_accessible :amount_paid, :balance, :email, :first_name, :ladder_rank, :last_name, :phone_number
end
