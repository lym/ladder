require 'spec_helper'

describe Player do

  before :each do
    @attr = {
      :first_name => "firstname",
      :last_name => "lastname",
      :phone_number => 0772123456,
      :email => "name@email.com",
      :amount_paid => 20000,
      :balance => 0000,
      :ladder_rank => 4
    }
  end
  it "should create a new player" do
    new_player = Player.create!(@attr) 
  end

  it "should require a first name" do
    no_first_name = User.new(@attr.merge(:first_name => ''))
    no_first_name.should_not be_valid
  end
end
