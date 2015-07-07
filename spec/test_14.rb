require_relative 'spec_helper'

# Resources allow you to create units. In our case (for simplicity), these resources will be stored directly within the barracks

describe Barracks do

  before :each do
    @barracks = Barracks.new(80, 1000, 500, 500)
  end

  it "starts off with 1000 gold resources" do
    expect(@barracks.gold).to eq(1000)
  end

  it "starts off with 80 food resources" do
    expect(@barracks.food).to eq(80)
  end

  it "starts off with 500 lumber resources" do
    expect(@barracks.lumber).to eq(500)
  end


end
