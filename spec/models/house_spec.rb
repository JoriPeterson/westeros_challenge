require 'rails_helper'

describe House do
  it "exists" do
    info = {
      name: "Greyjoy",
    }

    house = House.new(info)

    expect(house).to be_a House
    expect(house.name).to eq("Greyjoy")
  end
end
