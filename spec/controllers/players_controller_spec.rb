require 'spec_helper'

describe PlayersController do

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'scheduled_matches'" do
    it "should be successful" do
      get 'scheduled_matches'
      response.should be_success
    end
  end

  describe "Get 'get_comparisons'" do
    it "should be successful" do
      get "get_comparisons"
      response.should be_success
    end
  end
end
