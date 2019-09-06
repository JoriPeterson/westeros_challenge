require 'rails_helper'

describe House do
  it "exists" do

    house = House.new

    expect(house).to be_a House
  end
end
