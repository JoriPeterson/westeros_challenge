class WelcomeController < ApplicationController
  def show
    @houses = House.houses
  end
end
