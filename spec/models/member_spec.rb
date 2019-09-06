require 'rails_helper'

describe Member do
  it "exists" do
    results = {
      name: "Theon Greyjoy",
      id: 1,
    }

    member = Member.new(results)

    expect(member).to be_a Member
    expect(member.name).to eq("Theon Greyjoy")
    expect(member.id).to eq(1)
  end
end
