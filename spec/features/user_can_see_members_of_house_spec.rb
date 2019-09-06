require 'rails_helper'

describe "Members of a house" do
  it "As a user I can see members of a house" do

    visit '/'

    select "Greyjoy"

    click_on "Get Members"

    expect(current_path).to eq("/search")
    expect(page).to have_content("Greyjoy")
    expect(page).to_not have_content("House Stark")
    expect(page).to have_css(".member", count: 7)
    within(first(".member")) do
      expect(page).to have_css(".name")
      expect(page).to have_css(".id")
    end
  end
end
