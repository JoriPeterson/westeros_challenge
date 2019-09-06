class WelcomeController < ApplicationController
  def show
    house = House.new
    @houses = house.houses
  end
end
